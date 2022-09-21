/* SPDX-License-Identifier: GPL-2.0 */

/*****************************************************************************
 * Include files
 *****************************************************************************/
#include <ctype.h>
#include <errno.h>
#include <fcntl.h>
#include <inttypes.h>
#include <signal.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <getopt.h>

#include <bpf/bpf.h>
#include <bpf/btf.h>
#include <bpf/libbpf.h>

#include <linux/err.h>
#include <linux/ethtool.h>
#include <linux/sockios.h>

#include <net/if.h>
#include <xdp/libxdp.h>

#define PCAP_DONT_INCLUDE_PCAP_BPF_H
#include <pcap/dlt.h>
#include <pcap/pcap.h>

#include <sys/ioctl.h>
#include <sys/resource.h>
#include <sys/sysinfo.h>
#include <sys/utsname.h>

#include <xdp/prog_dispatcher.h>

#include "xdpmon.h"

/*****************************************************************************
 * Local definitions and global variables
 *****************************************************************************/
#define PROG_NAME "xdpmon"
#define DEFAULT_SNAP_LEN 262144
#define ERRMSG_BUFFER_SIZE 64
#ifndef ENOTSUPP
#define ENOTSUPP         524 /* Operation is not supported */
#endif

#define RX_FLAG_FENTRY (1<<0)
#define RX_FLAG_FEXIT  (1<<1)

const char *default_filename = "xdpmon_xdp.o";
const char *default_progsec = "xdpmon_sec";

/*
static struct option long_options[] =
{
	{"help", no_argument, NULL, 1},

	{"ip", no_argument, NULL, 'a'},
	{"protocol", no_argument, NULL, 'p'},
	{"port", no_argument, NULL, 't'},
};

static 
*/
// seperator
void init_config(struct xdp_config *cfg) {
	cfg->ifname = "ens33";  //validation
	cfg->ifindex = if_nametoindex(cfg->ifname);
	cfg->xdp_mode = XDP_MODE_SKB;
	cfg->num_progs = 1;
	strncpy(cfg->program_name, default_filename, sizeof(cfg->program_name) - 1);
	strncpy(cfg->section_name, default_progsec, sizeof(cfg->section_name) - 1);
}

struct bpf_object *bpf_obj_from_xdp_program(struct xdp_program *prog)
{
	struct bpf_object *obj = NULL;

	if (prog) {
		obj = xdp_program__bpf_obj(prog);
	} else {
		fprintf(stderr, "xdp program error: can not get bpf object from xdp program\n");
	}
	return obj;
}
/*
int find_map_fd(struct bpf_object *bpf_obj, int mon_type) {
	struct bpf_map *map;
	int map_fd = -1;
	const char *addr_map_name = "xdpmon_ip_addr_map";
	const char *port_map_name = "xdpmon_port_map";
	const char *proto_map_name = "xdpmon_proto_map";

	switch(mon_type) {
	case 0: {
		}
	}

	map = bpf_object__find_map_by_name(bpf_obj, bpf_map_name);
	if (!map) {
		fprintf(stderr, "xdpmon: get map by object failed\n");
		goto out;
	}
	map_fd = bpf_map__fd(map);
out:
	return map_fd;
}
*/
struct xdp_program** user_xdp_attach(struct xdp_config *cfg) {
	int err;	
	struct xdp_program **progs;
	//struct xdp_program *prog;
	char errmsg[ERRMSG_BUFFER_SIZE];

	progs = calloc(cfg->num_progs, sizeof(*progs));
	DECLARE_LIBBPF_OPTS(bpf_object_open_opts, opts, 0);

	for(int i = 0; i < cfg->num_progs; i++) {

		printf("before open xdp file,%p\n", progs[i]);

		progs[i] = xdp_program__open_file(cfg->program_name, cfg->section_name, &opts);

		printf("after open xdp file,%p\n", progs[i]);
		err = libxdp_get_error(progs[i]); 
		if (err) {
			libxdp_strerror(err, errmsg, sizeof(errmsg));
			fprintf(stderr, "xdpmon: Failed to open object file");
			free(progs[i]);
		}
	}

	xdp_program__attach_multi(progs, cfg->num_progs, cfg->ifindex, cfg->xdp_mode, 0);

	return progs;
}

struct xdp_program* user_xdp_attach_single(struct xdp_config *cfg) {
	int err;
	struct xdp_program *prog;
	char errmsg[ERRMSG_BUFFER_SIZE];

	DECLARE_LIBBPF_OPTS(bpf_object_open_opts, opts, 0);

	prog = xdp_program__open_file(cfg->program_name, cfg->section_name, &opts);
	err = libxdp_get_error(prog); 
	if (err) {
		libxdp_strerror(err, errmsg, sizeof(errmsg));
		fprintf(stderr, "xdpmon: Failed to open object file");
		free(prog);
	}
	xdp_program__attach(prog, cfg->ifindex, cfg->xdp_mode, 0);
	return prog;
}

int user_xdp_detach_multi(struct xdp_program **progs, struct xdp_config *cfg) {

	if (progs == NULL) {
		fprintf(stderr, "Error detach xdp program!\n");
	} else {
		xdp_program__detach_multi(progs, cfg->num_progs, cfg->ifindex, cfg->xdp_mode, 0);
	}

	return 0;
}
/*
//prototype reference from xdp-tutorial basic03 project
void stats_collect(struct stats_record *rec)
{
	__u32 key = IPV4;

	bpf_map_lookup_elem();

}

void stats_print(struct *)
{
	__u32 key = IPv4;

}

void stats_poll(int bpf_map_fd, int interval)
{
	//enum print_mode {ADDR, PROTO};

	while (1) {
		stats_collect();
		stats_print();
		sleep(2);
	}

}
*/

//int main(int argc, char **argv)
int main()
{
	struct xdp_program *xprog;
	struct bpf_object *obj = NULL;
	int xdpmon_map_fd = 0;

	struct xdp_config cfg = {
		.xdp_mode = XDP_MODE_SKB,
		.ifindex = -1,
	};

	init_config(&cfg);
	//xprog = user_xdp_attach(&cfg);
	xprog = user_xdp_attach_single(&cfg);
	printf("after attach, %p\n", xprog);
	obj = bpf_obj_from_xdp_program(xprog);

	if (obj == NULL) {
		fprintf(stderr, "xdp object error: Failed to get bpf object, %p\n", obj);
	}

//	xdpmon_map_fd = find_map_fd(obj, "xdpmon_array_map");

	if (xdpmon_map_fd < 0) {
		fprintf(stderr, "return map fd error\n");
	} else {
		fprintf(stderr, "return map fd error\n");
	}
	printf("return map fd = %d\n", xdpmon_map_fd);
	//user_xdp_detach(&cfg);
	return 0;
}

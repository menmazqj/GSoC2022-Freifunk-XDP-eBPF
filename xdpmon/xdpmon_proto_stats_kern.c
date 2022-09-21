// SPDX-License-Identifier: GPL-2.0

/*****************************************************************************
 * Include files
 *****************************************************************************/
#include <linux/bpf.h>
#include <stdbool.h>
#include <bpf/bpf_helpers.h>
#include <bpf/bpf_trace_helpers.h>
#include <linux/if_ether.h>
#include "xdpmon.h"

/*****************************************************************************
 * Macros
 *****************************************************************************/
//#define min(x, y) ((x) < (y) ? x : y)
#define PROTO_MAX 8
#define IP_ADDR_MAX 8
#define PORT_MAX 65535

/*****************************************************************************
 * Local definitions and global variables
 *****************************************************************************/
enum protocols {
	BATMAN,
	IPV4,
	IPV6,
	ICMP,
	TCP,
	UDP,
	PROTO_MAX,
};

struct datarec {
	__u32 rx_packtes;
	__u32 rx_bytes;
};

struct {
	__uint(type, BPF_MAP_TYPE_ARRAY);
	__uint(max_entries, PROTO_MAX);
	__type(key, __u32);
	__type(value, sizeof(struct datarec));
	//__type(value, sizeof(int));
} xdpmon_proto_map SEC(".maps");

/*****************************************************************************
 * XDP trace program
 *****************************************************************************/
SEC("xdpmon_sec")
int xdpmon_prog(struct xdp_md *xdp)
{	

	void *data_end = (void *)(long)xdp->data_end;
	void *data = (void *)(long)xdp->data;
	struct datarec *rec;
	__u16 ethproto;
	struct ethhdr *hdr = data;
	int key = 0;

	if (data >= data_end)
		return XDP_PASS;

	ethproto = __constant_ntohs(ethhdr->h_proto);
	
	rec = bpf_map_lookup_elem(&xdpmon_proto_map, &key);

	if (!rec)
		return XDP_ABORTED;

	__u32 bytes = data_end - data;
	rec->rx_bytes += bytes;
	rec->rx_packtes += 1;
	
	return XDP_PASS;
}


/*****************************************************************************
 * License
 *****************************************************************************/
char _license[] SEC("license") = "GPL";

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

struct {
	__uint(type, BPF_MAP_TYPE_ARRAY);
	__uint(max_entries, IP_ADDR_MAX);
	__type(key, __u32);
	__type(value, sizeof(struct datarec));
	//__type(value, sizeof(int));
} xdpmon_ip_addr_map SEC(".maps");
/*****************************************************************************
 * XDP trace program
 *****************************************************************************/
SEC("xdpmon_sec")
int xdpmon_prog(struct xdp_md *xdp)
{	
	return XDP_PASS;
}


/*****************************************************************************
 * License
 *****************************************************************************/
char _license[] SEC("license") = "GPL";

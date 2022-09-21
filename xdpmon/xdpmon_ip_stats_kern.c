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
struct ip_pair {
	struct in_addr src;
	struct in_addr dst;
};

struct ip6_pair {
	struct in6_addr src;
	struct in6_addr dst;
};

union addr {
	struct ip_pair;
	struct ip6_pair;
};

struct datarec {
	__u32 rx_packtes;
	__u32 rx_bytes;
};

struct {
	__uint(type, BPF_MAP_TYPE_ARRAY);
	__uint(max_entries, IP_ADDR_MAX);
	__type(key, union addr);
	__type(value, sizeof(struct datarec));
	//__type(value, sizeof(int));
} xdpmon_ip_addr_map SEC(".maps");

/*****************************************************************************
 * XDP trace program
 *****************************************************************************/
void *parse_ether_header(void *hdr)
{
	struct ethhdr *eth_hdr = hdr;
	__u16 ethproto;
	ethproto = __constant_ntohs(hdr->h_proto);
	
	switch (ethproto) {
	case ETH_P_IP: {
		struct iphdr *iph = (struct iphdr *)(eth + 1);
		if ((void*)(iph + 1) > data_end)
			break;
		       }
	case ETH_P_IPV6: {

	}	
}

SEC("xdpmon_ip_addr_stats_sec")
int xdpmon_prog(struct xdp_md *xdp)
{	

	void *data_end = (void *)(long)xdp->data_end;
	void *data = (void *)(long)xdp->data;
	union addr key;
	struct datarec *rec;

	struct ethhdr *hdr = data;
	struct iphdr *ip_hdr;
	struct ipv6hdr *ip6_hdr;

	union {
		ip_pair ip_addr;
		ip6_pair ip6_addr;
	} addr;
	int key = 0;

	if (data >= data_end)
		return XDP_PASS;

	ethproto = __constant_ntohs(hdr->h_proto);

	switch(ethproto) {
	case ETH_P_IP: {
		addr.ip_addr.src.s_addr = ;
		addr.ip_addr.dst.s_addr = ;
		break;
		       }
	case ETH_P_IPV6: {
		//fall through
		break;
			 }
	}

	rec = bpf_map_lookup_elem(&xdpmon_ip_addr_map, &key);

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

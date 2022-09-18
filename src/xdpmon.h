// SPDX-License-Identifier: GPL-2.0
/******************************************************************************
 * Multiple include protection
 ******************************************************************************/
#ifndef _XDPDUMP_H_
#define _XDPDUMP_H_

/******************************************************************************
 * General definitions
 ******************************************************************************/
#define PERF_MAX_WAKEUP_EVENTS   64
#define PERF_MMAP_PAGE_COUNT	256
#define MAX_CPUS		256

/******************************************************************************
 * General used macros
 ******************************************************************************/
#ifndef __packed
#define __packed __attribute__((packed))
#endif

/*****************************************************************************
 * trace configuration structure
 *****************************************************************************
struct trace_configuration {
	__u32 capture_if_ifindex;
	__u32 capture_snaplen;
	__u32 capture_prog_index;
};

*****************************************************************************
 * perf data structures
 *****************************************************************************/
#define MDF_DIRECTION_FEXIT 1


#ifndef __bpf__
#endif
/*
struct multistring {
	char **string;
	int strings_num;
};
*/

enum protocols {
	BATMAN,
	IPV4,	
	IPV6,

	TCP,
	UDP,

	OTHER_PROTO,
};

struct xdp_config {
	char *ifname;
	int ifindex;
	int xdp_mode;
	int num_progs;
	char program_name[32];
	//struct multistring program_names;
	char section_name[32];
};

enum protocols parse_protocol();

/******************************************************************************
 * End-of include file
 ******************************************************************************/
#endif /* _XDPDUMP_H_ */


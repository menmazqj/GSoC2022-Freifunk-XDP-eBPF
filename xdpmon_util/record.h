// SPDX-License-Identifier: GPL-2.0
/******************************************************************************
 * Multiple include protection
 ******************************************************************************/
#ifndef _XDPMON_RECORD_H_
#define _XDPMON_RECORD_H_

/******************************************************************************
 * General definitions
 ******************************************************************************/
#define MAX_CPUS		256

#define MAX_IP_ADDRS		256
#define MAX_MAC_ADDRS		256

/******************************************************************************
 * General used macros
 ******************************************************************************/
#ifndef __packed
#define __packed __attribute__((packed))
#endif

/*****************************************************************************
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

struct 

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
#endif /* _XDPMON_RECORD_H_ */


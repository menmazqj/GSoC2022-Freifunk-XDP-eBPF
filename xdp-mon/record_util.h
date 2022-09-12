#ifndef _XDPMON_RECORD_UTILS_H_
#define _XDPMON_RECORD_UTILS_H_

union {
	struct in_addr ip_v4;
	struct in6_addr ip_v6;
} ip_addr;

struct ip_addr_record {
	ip_addr src;
	ip_addr dst; 
};

#endif




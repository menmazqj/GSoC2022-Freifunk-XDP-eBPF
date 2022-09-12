#ifndef _XDPMON_UTIL_H_
#define _XDPMON_UTIL_H_

__u64 ether_addr_to_u64(const);
enum protocols parse_ether_header(const void *hdr);
enum protocols parse_ip_header(const void *hdr);
enum protocols parse_transport_header(const void *hdr);
enum protocols parse_protocol(const struct ethhdr *hdr);

/******************************************************************************
 * End-of include file
 ******************************************************************************/
#endif /* _XDPDUMP_H_ */


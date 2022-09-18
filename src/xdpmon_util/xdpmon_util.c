#include "xdpmon_util.h"

#define bpf_printk(fmt, ...)				\
({							\
 	char ____fmt[] = fmt;				\
 	bpf_trace_printk(____fmt, sizeof(____fmt)),	\
			##__VA_ARGS__);			\
})

__u64 ether_addr_to_u64(const __u8);
enum protocols parse_ether_header(const void *hdr)
{

}
enum protocols parse_ip_header(const void *hdr);
enum protocols parse_transport_header(const void *hdr);
enum protocols parse_protocol(const void *hdr)
{
	struct ethhdr *eth_hdr = hdr;
	__be16 eth_type;

	eth_type = hdr->n_proto;
	ntohs
	ETH_P_;
	htonseth_hdr->n_proto ;
}

/******************************************************************************
 * End-of include file
 ******************************************************************************/
#endif /* _XDPDUMP_H_ */


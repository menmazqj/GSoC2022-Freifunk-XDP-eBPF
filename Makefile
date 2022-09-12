# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
TOOL_NAME    := xdpmon
XDP_TARGETS  := xdpmon_bpf xdpmon_xdp
USER_TARGETS := xdpmon
TEST_FILE    := tests/test-xdpmon.sh

LIB_DIR       = ../lib
USER_LIBS     = -lpcap
MAN_PAGE     := xdpmon.8

include $(LIB_DIR)/common.mk

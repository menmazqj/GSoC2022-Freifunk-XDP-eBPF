# Generated config
# user can control verbosity similar to kernel builds (e.g., V=1)
ifeq ("$(origin V)", "command line")
  VERBOSE = $(V)
endif
ifndef VERBOSE
  VERBOSE = 0
endif
ifeq ($(VERBOSE),1)
  Q =
else
  Q = @
endif
ifeq ($(VERBOSE),0)
MAKEFLAGS += --no-print-directory
endif


ifeq ($(VERBOSE), 0)
    QUIET_CC       = @echo '    CC       '$@;
    QUIET_CLANG    = @echo '    CLANG    '$@;
    QUIET_LLC      = @echo '    LLC      '$@;
    QUIET_LINK     = @echo '    LINK     '$@;
    QUIET_INSTALL  = @echo '    INSTALL  '$@;
    QUIET_M4       = @echo '    M4       '$@;
    QUIET_GEN      = @echo '    GEN      '$@;
endif
PRODUCTION:=0
DYNAMIC_LIBXDP:=0
MAX_DISPATCHER_ACTIONS:=10
BPF_TARGET:=bpf
PKG_CONFIG:=pkg-config
CC:=gcc
LD:=ld
OBJCOPY:=objcopy
CLANG:=clang
LLC:=llc
M4:=m4
EMACS:=
ARCH_INCLUDES:=-I/usr/include/x86_64-linux-gnu/ 
HAVE_FEATURES+=LIBBPF_PERF_BUFFER__CONSUME
HAVE_FEATURES+=LIBBPF_BTF__LOAD_FROM_KERNEL_BY_ID
HAVE_FEATURES+=LIBBPF_BTF__TYPE_CNT
HAVE_FEATURES+=LIBBPF_BPF_OBJECT__NEXT_MAP
HAVE_FEATURES+=LIBBPF_BPF_OBJECT__NEXT_PROGRAM
HAVE_FEATURES+=LIBBPF_BPF_PROGRAM__INSN_CNT
HAVE_FEATURES+=LIBBPF_BPF_MAP_CREATE
HAVE_FEATURES+=LIBBPF_PERF_BUFFER__NEW_RAW
HAVE_FEATURES+=LIBBPF_BPF_XDP_ATTACH
SYSTEM_LIBBPF:=n
LIBBPF_VERSION=0.8.0
CFLAGS += -I$(LIB_DIR)/libbpf/src/root/usr/include
BPF_CFLAGS += -I$(LIB_DIR)/libbpf/src/root/usr/include
LDFLAGS += -L$(LIB_DIR)/libbpf/src
LDLIBS += -l:libbpf.a
OBJECT_LIBBPF = $(LIB_DIR)/libbpf/src/libbpf.a
HAVE_ZLIB:=y
CFLAGS += -DHAVE_ZLIB
LDLIBS +=  -lz
HAVE_ELF:=y
CFLAGS += -DHAVE_ELF -g
LDLIBS +=  -lelf
HAVE_PCAP:=y
HAVE_FEATURES += SECURE_GETENV

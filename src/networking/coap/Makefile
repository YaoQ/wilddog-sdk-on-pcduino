
INCLUDE_PATH=-I$(TOPDIR)/include -I$(TOPDIR)/src
LIB_PATH = $(TOPDIR)/lib

CFLAGS = $(INCLUDE_PATH)
LDFLAGS = 
ifeq (pcduino, espressif)
INCLUDE_PATH+= -I ../../include -I $(TOPDIR)platform/espressif 
endif

ifeq (pcduino, espressif)
INCLUDE_PATH += -I $(TOPDIR)/../include
endif
include $(TOPDIR)/project/pcduino/env.mk

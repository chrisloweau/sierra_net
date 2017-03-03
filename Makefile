srcs := sierra_net.c
obj-m := $(srcs:%.c=%.o)
drv := $(srcs:%.c=%.ko)

MODULE_ROOT:= /lib/modules/$(shell uname -r)
BUILDDIR := $(MODULE_ROOT)/build
NETDIR := $(MODULE_ROOT)/kernel/drivers/net/usb
PWD := $(shell pwd)

.PHONY: all build clean compile debug help install

all: help

debug:
	@echo "src         = "$(src)
	@echo "obj-m       = "$(obj-m)
	@echo "drv         = "$(drv)
	@echo "MODULE_ROOT = "$(MODULE_ROOT)
	@echo "BUILDDIR    = "$(BUILDDIR)
	@echo "NETDIR      = "$(NETDIR)
	@echo "PWD         = "$(PWD)
	@echo
	@ls -al $(NETDIR)/$(drv)
	@echo

build: compile

compile:
	@echo "-----------------------------------------------------"
	@echo "Compiling "$(src)
	$(MAKE) -C $(BUILDDIR) SUBDIRS=$(PWD) "obj-m=$(obj-m)" modules
	@echo "-----------------------------------------------------"

install:
	@install -b -m 644 $(drv) $(NETDIR)
	@depmod -a
	@modprobe -r sierra_net
	@modprobe sierra_net

help:
	@echo
	@echo Usage: make [option]
	@echo
	@echo Available options:
	@echo
	@echo " build     Builds the driver source code."
	@echo " compile   Same as 'build'."
	@echo " install   Installs the driver (requires privileges)."
	@echo " debug     Displays basic script debugging information."
	@echo " help      Displays this Help."
	@echo

clean:
	-@rm -rf *.o *.ko sierra_net.mod.c Module.symvers .sierra_net* .tmp_versions modules.order

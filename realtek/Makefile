KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build
M ?= $(shell pwd)

ifeq ($(O),)
out_dir := .
else
out_dir := $(O)
endif

# Realtek's rtk_btusb lives in a subdirectory, and its own Makefile's
# modules_install copies into a hard-coded vendor_lib path, so kbuild is
# called on it directly. The results are then linked up to $(M), where
# kleaf expects them (same approach as realtek-drivers/8822cs).
DRIVER_DIR := rtk_btusb
DRIVER_KOS := rtk_btusb.ko

modules modules_install clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M)/$(DRIVER_DIR) $(@)
	if [ -e $(out_dir)/$(M)/$(DRIVER_DIR)/Module.symvers ]; then \
		ln -sf $(out_dir)/$(M)/$(DRIVER_DIR)/Module.symvers $(out_dir)/$(M)/Module.symvers; \
	fi
	for ko in $(DRIVER_KOS); do \
		if [ -e $(out_dir)/$(M)/$(DRIVER_DIR)/$$ko ]; then \
			ln -sf $(out_dir)/$(M)/$(DRIVER_DIR)/$$ko $(out_dir)/$(M)/$$ko; \
		fi; \
	done

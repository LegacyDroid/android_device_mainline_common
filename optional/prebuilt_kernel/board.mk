#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifneq ($(TARGET_PREBUILT_KERNEL),)

# Whether the prebuilt kernel was built as a mixed mode gki kernel
TARGET_KERNEL_MIXED_MODE ?= true

# Modules are expected to be in the same directory as the preubilt kernel
MODDIR := $(dir $(TARGET_PREBUILT_KERNEL))

ifeq ($(TARGET_KERNEL_MIXED_MODE),true)
# System modules are listed in the system_dlkm modules load
BOARD_SYSTEM_KERNEL_MODULES := $(addprefix $(MODDIR)/,$(shell awk -F'/' '{ print $$NF }' $(MODDIR)/system_dlkm.modules.load))
endif # TARGET_KERNEL_MIXED_MODE

# All other modules get copied to vendor/vendor_dlkm
BOARD_VENDOR_KERNEL_MODULES := $(filter-out $(BOARD_SYSTEM_KERNEL_MODULES),$(wildcard $(MODDIR)/*.ko))

# Only select modules gets copied to boot/vendor_boot and recovery, set per device
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(addprefix $(MODDIR)/,$(BOOT_KERNEL_MODULES))
BOARD_RECOVERY_KERNEL_MODULES       := $(addprefix $(MODDIR)/,$(RECOVERY_KERNEL_MODULES))

ifneq ($(TARGET_KERNEL_MIXED_MODE),true)
# In order to allow GKI modules to load properly, we need to retain the module
# signature which would normally get stripped during packaging. Disable stripping
# the modules to retain the GKI modules' signature. Note, kernel builds should
# always strip the modules in via the kleaf property: strip_modules = True.
BOARD_DO_NOT_STRIP_GENERIC_RAMDISK_MODULES := true
BOARD_DO_NOT_STRIP_RECOVERY_MODULES        := true
BOARD_DO_NOT_STRIP_VENDOR_MODULES          := true
BOARD_DO_NOT_STRIP_VENDOR_RAMDISK_MODULES  := true
endif # TARGET_KERNEL_MIXED_MODE

endif # TARGET_PREBUILT_KERNEL

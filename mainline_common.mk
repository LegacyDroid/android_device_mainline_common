#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

MAINLINE_COMMON_PATH := device/mainline/common

# Include the fragments
include $(MAINLINE_COMMON_PATH)/optional/*/product.mk

# DLKM Loader
PRODUCT_PACKAGES += \
    dlkm_loader

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Gatekeeper
PRODUCT_PACKAGES += \
    com.android.hardware.gatekeeper.nonsecure

# Init
PRODUCT_COPY_FILES += \
    $(MAINLINE_COMMON_PATH)/init/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc \
    $(call find-copy-subdir-files,init.mainline.*,$(MAINLINE_COMMON_PATH)/init/,$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/)

# Keymint
PRODUCT_PACKAGES += \
    android.hardware.security.keymint-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Page size
PRODUCT_CHECK_PREBUILT_MAX_PAGE_SIZE := true
PRODUCT_MAX_PAGE_SIZE_SUPPORTED := 16384
PRODUCT_NO_BIONIC_PAGE_SIZE_MACRO := true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.credentials.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.credentials.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

PRODUCT_PACKAGES += \
    android.software.ipsec_tunnels.prebuilt.xml

# Recovery
PRODUCT_COPY_FILES += \
    $(MAINLINE_COMMON_PATH)/init/ueventd.rc:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/etc/ueventd.rc \
    $(call find-copy-subdir-files,init.recovery.mainline.*,$(MAINLINE_COMMON_PATH)/init/,$(TARGET_COPY_OUT_RECOVERY)/root/)

ifeq ($(TARGET_HAS_BATTERY),false)
PRODUCT_VENDOR_PROPERTIES += \
    ro.recovery.batteryless=true
endif

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(MAINLINE_COMMON_PATH) \
    hardware/mainline

# UFFD GC
PRODUCT_ENABLE_UFFD_GC := true

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb.host.prebuilt.xml

# Wi-Fi
PRODUCT_PACKAGES += \
    hostapd \
    wpa_supplicant

PRODUCT_PACKAGES += \
    android.hardware.wifi.prebuilt.xml

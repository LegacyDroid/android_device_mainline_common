#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_USB_GADGET_HAL),mainline)

PRODUCT_PACKAGES += \
    com.android.hardware.usb.gadget.mainline

endif # TARGET_USB_GADGET_HAL

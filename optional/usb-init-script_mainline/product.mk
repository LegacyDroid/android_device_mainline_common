#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_USB_INIT_SCRIPT),mainline)

PRODUCT_PACKAGES += \
    init.mainline.usb.rc \
    set_udc.sh

endif # TARGET_USB_INIT_SCRIPT

#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_USB_HAL),lineage-basic)
PRODUCT_PACKAGES += android.hardware.usb-service.basic
else ifeq ($(TARGET_USB_HAL),lineage-dual_role_usb)
PRODUCT_PACKAGES += android.hardware.usb@1.3-service.dual_role_usb
else ifeq ($(TARGET_USB_HAL),lineage-typec)
PRODUCT_PACKAGES += android.hardware.usb@1.1-service.typec
endif

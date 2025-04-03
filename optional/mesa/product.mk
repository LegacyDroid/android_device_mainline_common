#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS),mesa)

PRODUCT_PACKAGES += \
    mesa3d

PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.egl=mesa

endif # TARGET_GRAPHICS

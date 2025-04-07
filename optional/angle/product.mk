#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS_EGL),angle)

PRODUCT_PACKAGES += \
    android.software.opengles.deqp.level-latest.prebuilt.xml

PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.egl=angle \
    ro.opengles.version=196610

endif # TARGET_GRAPHICS_EGL

#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS),swiftshader)

PRODUCT_PACKAGES += \
    vulkan.pastel

PRODUCT_PACKAGES += \
    android.hardware.vulkan.level-0.prebuilt.xml \
    android.hardware.vulkan.version-1_0_3.prebuilt.xml \
    android.software.vulkan.deqp.level-latest.prebuilt.xml \
    android.software.opengles.deqp.level-latest.prebuilt.xml

PRODUCT_REQUIRES_INSECURE_EXECMEM_FOR_SWIFTSHADER := true

PRODUCT_VENDOR_PROPERTIES += \
    ro.cpuvulkan.version=4206592 \
    ro.hardware.egl=angle \
    ro.hardware.vulkan=pastel \
    ro.opengles.version=196609

endif # TARGET_GRAPHICS

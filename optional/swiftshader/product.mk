#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS_VULKAN),swiftshader)

PRODUCT_PACKAGES += \
    vulkan.pastel

PRODUCT_PACKAGES += \
    android.hardware.vulkan.level-0.prebuilt.xml \
    android.hardware.vulkan.version-1_0_3.prebuilt.xml \
    android.software.vulkan.deqp.level-latest.prebuilt.xml

# TODO(b/65201432): Swiftshader needs to create executable memory.
PRODUCT_REQUIRES_INSECURE_EXECMEM_FOR_SWIFTSHADER := true

PRODUCT_VENDOR_PROPERTIES += \
    ro.cpuvulkan.version=4206592 \
    ro.hardware.vulkan=pastel

endif # TARGET_GRAPHICS_VULKAN

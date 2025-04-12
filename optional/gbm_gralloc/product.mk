#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS_ALLOCATOR_HAL),gbm)

ifneq ($(TARGET_GRAPHICS),mesa)
$(error TARGET_GRAPHICS=mesa is required when TARGET_GRAPHICS_ALLOCATOR_HAL=gbm)
endif

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    dri_gbm \
    gralloc.gbm \
    manifest_mainline_common_gbm_gralloc.xml

PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.gralloc=gbm

endif # TARGET_GRAPHICS_ALLOCATOR_HAL

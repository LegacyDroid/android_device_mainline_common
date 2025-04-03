#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS_COMPOSER_HAL),drm_hwcomposer)

TARGET_DRM_HWCOMPOSER_HAL_INTERFACE ?= aidl
ifeq ($(TARGET_DRM_HWCOMPOSER_HAL_INTERFACE),aidl)
PRODUCT_PACKAGES += \
    android.hardware.composer.hwc3-service.drm
else ifeq ($(TARGET_DRM_HWCOMPOSER_HAL_INTERFACE),libhardware)
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-service \
    hwcomposer.drm \
    manifest_mainline_common_graphics-composer-hal_drm_hwcomposer_libhardware.xml
PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.hwcomposer=drm
else
$(error Not supported)
endif

endif # TARGET_GRAPHICS_COMPOSER_HAL

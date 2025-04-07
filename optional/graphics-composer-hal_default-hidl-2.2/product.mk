#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS_COMPOSER_HAL),default-hidl-2.2)

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.2-service \
    manifest_mainline_common_graphics-composer-hal_default-hidl-2.2.xml

endif # TARGET_GRAPHICS_COMPOSER_HAL

#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_BOOT_HAL),default)

PRODUCT_PACKAGES += \
    android.hardware.boot-service.default_recovery \
    com.android.hardware.boot

endif # TARGET_BOOT_HAL

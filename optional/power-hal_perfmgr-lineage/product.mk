#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_POWER_HAL),perfmgr-lineage)

PRODUCT_PACKAGES += \
    android.hardware.power-service.lineage-libperfmgr \
    perfmgr-lineage.rc \
    powerhint.json

PRODUCT_SOONG_NAMESPACES += \
    hardware/google/interfaces \
    hardware/google/pixel/power-libperfmgr \
    hardware/lineage/interfaces/power-libperfmgr

endif # TARGET_POWER_HAL

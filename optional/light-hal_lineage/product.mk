#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_LIGHT_HAL),lineage)

PRODUCT_PACKAGES += \
    android.hardware.light-service.lineage

endif # TARGET_LIGHT_HAL

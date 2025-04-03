#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_POWER_HAL),default-aidl)

PRODUCT_PACKAGES += \
    com.android.hardware.power

endif # TARGET_POWER_HAL

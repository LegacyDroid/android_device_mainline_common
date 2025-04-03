#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_MEMTRACK_HAL),default-aidl)

PRODUCT_PACKAGES += \
    com.android.hardware.memtrack

endif # TARGET_MEMTRACK_HAL

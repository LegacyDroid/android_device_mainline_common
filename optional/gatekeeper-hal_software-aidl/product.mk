#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GATEKEEPER_HAL),software-aidl)

PRODUCT_PACKAGES += \
    com.android.hardware.gatekeeper.nonsecure

endif # TARGET_GATEKEEPER_HAL

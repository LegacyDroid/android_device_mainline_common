#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_SECURITY_KEYMINT_HAL),default)

PRODUCT_PACKAGES += \
    android.hardware.security.keymint-service

endif # TARGET_SECURITY_KEYMINT_HAL

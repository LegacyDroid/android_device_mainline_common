#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_VIBRATOR_HAL),glodroid)

PRODUCT_PACKAGES += \
    com.android.hardware.vibrator.glodroid

endif # TARGET_VIBRATOR_HAL

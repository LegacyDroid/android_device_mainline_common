#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_VIBRATOR_HAL),mainline)

PRODUCT_PACKAGES += \
    com.android.hardware.vibrator.mainline

endif # TARGET_VIBRATOR_HAL

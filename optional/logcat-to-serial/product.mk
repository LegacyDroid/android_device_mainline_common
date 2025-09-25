#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_ENABLE_LOGCAT_TO_SERIAL),true)

PRODUCT_PACKAGES += \
    init.logcat-to-serial.rc

endif # TARGET_ENABLE_LOGCAT_TO_SERIAL

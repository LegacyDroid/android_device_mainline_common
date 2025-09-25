#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_ENABLE_LOGCAT_TO_SERIAL),true)

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MAINLINE_COMMON_PATH)/optional/logcat-to-serial/sepolicy

endif # TARGET_ENABLE_LOGCAT_TO_SERIAL

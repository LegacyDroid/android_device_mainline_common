#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_SUPPORTS_SUSPEND),false)

PRODUCT_PACKAGES += \
    suspend_blocker \
    suspend_blocker.rc

endif # endif

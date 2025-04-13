#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_POWER_HAL),perfmgr-lineage)

include device/lineage/sepolicy/libperfmgr/sepolicy.mk

endif # TARGET_POWER_HAL

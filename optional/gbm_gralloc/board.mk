#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_GRAPHICS_ALLOCATOR_HAL),gbm)

BOARD_MESA3D_BUILD_LIBGBM := true

endif # TARGET_GRAPHICS_ALLOCATOR_HAL

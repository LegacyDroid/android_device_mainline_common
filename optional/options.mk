#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

##### Combinations #####

TARGET_INITIAL_BRINGUP ?= false
ifeq ($(TARGET_INITIAL_BRINGUP),true)
$(warning TARGET_INITIAL_BRINGUP is set. Please unset it when possible.)
TARGET_GRAPHICS ?= swiftshader
TARGET_HEALTH_HAL ?= cuttlefish
TARGET_SUPPORTS_SUSPEND ?= false
endif

TARGET_USES_FRAMEBUFFER_DISPLAY ?= false
ifeq ($(TARGET_USES_FRAMEBUFFER_DISPLAY),true)
TARGET_GRAPHICS ?= swiftshader
TARGET_GRAPHICS_ALLOCATOR_HAL := default-hidl-2.0
TARGET_GRAPHICS_COMPOSER_HAL := default-hidl-2.1
endif

##### Components #####

# Audio
TARGET_AUDIO_HAL ?= default-aidl

# Graphics
TARGET_GRAPHICS ?= mesa

# Graphics HALs
TARGET_GRAPHICS_ALLOCATOR_HAL ?= minigbm
TARGET_GRAPHICS_COMPOSER_HAL ?= drm_hwcomposer
TARGET_MEMTRACK_HAL ?= default-aidl

# Health
ifeq ($(TARGET_HAS_BATTERY),false)
TARGET_HEALTH_HAL ?= cuttlefish
else
TARGET_HEALTH_HAL ?= default-aidl
endif

# Light
TARGET_LIGHT_HAL ?= lineage

# Power
TARGET_POWER_HAL ?= default-aidl
TARGET_SUPPORTS_SUSPEND ?= true

## Audio

### TARGET_AUDIO_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| default-aidl | audio-hal_default-aidl | Usable on targets without any sound card or with a simple sound card |

## Graphics

### TARGET_GRAPHICS
| Value | Directory | Description |
|-------|-----------|-------------|
| mesa | mesa | Typically for targets that supports 3D acceleration |
| swiftshader | swiftshader | For targets without 3D acceleration |

## Graphics HALs

### TARGET_GRAPHICS_ALLOCATOR_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| default-hidl-2.0 | graphics-allocator-hal_default-hidl-2.0 | Supports framebuffer display |
| minigbm | minigbm | May require additional build flags |

### TARGET_GRAPHICS_COMPOSER_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| default-hidl-2.1 | graphics-composer-hal_default-hidl-2.1 | Supports framebuffer display |
| drm_hwcomposer | drm_hwcomposer | Generic DRM HWComposer |

### TARGET_MEMTRACK_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| default-aidl | memtrack-hal_default-aidl | |

## Health

### TARGET_HEALTH_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| cuttlefish | health-hal_cuttlefish | For devices without battery |
| default-aidl | health-hal_default-aidl | For devices with a battery accessible through /sys/class/power_supply |

## Light

### TARGET_LIGHT_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| lineage | light-hal_lineage | Supports most of generic backlight and LED devices |

## Power

### TARGET_POWER_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| default-aidl | power-hal_default-aidl | |

### TARGET_SUPPORTS_SUSPEND
| Value | Directory | Description |
|-------|-----------|-------------|
| false | suspend_blocker | Disables suspend |

## USB

### TARGET_USB_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| lineage-basic | usb-hal_lineage | |
| lineage-dual_role_usb | usb-hal_lineage | |
| lineage-typec | usb-hal_lineage | |

### TARGET_USB_GADGET_HAL
| Value | Directory | Description |
|-------|-----------|-------------|
| mainline | usb-gadget-hal_mainline | |

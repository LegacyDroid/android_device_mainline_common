#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifneq ($(TARGET_PREBUILT_KERNEL),)

# Aosp requires the kernel get copied to PRODUCT_OUT, but does not define the copy
# Lineage defines this copy in vendor/lineage, so don't duplicate
ifeq ($(LINEAGE_BUILD),)
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel
endif

endif # TARGET_PREBUILT_KERNEL

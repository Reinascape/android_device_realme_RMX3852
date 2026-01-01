#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_SUPER_PARTITION_SIZE := 15569256448

# Include the common OEM chipset BoardConfig.
include device/realme/sm8635-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/RMX3852

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX3852|RE5C46L1

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS += CONFIG_BALE_DTB=y

# Include the proprietary files BoardConfig.
include vendor/realme/RMX3852/BoardConfigVendor.mk

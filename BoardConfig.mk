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

# Kernel (prebuilt)
PREBUILT_PATH := kernel/realme/bale
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_KERNEL_SOURCE := $(PREBUILT_PATH)/kernel-headers
BOARD_PREBUILT_DTBIMAGE_DIR := $(PREBUILT_PATH)/images/dtbs/
BOARD_PREBUILT_DTBOIMAGE := $(PREBUILT_PATH)/images/dtbo.img
PRODUCT_COPY_FILES += \
	$(PREBUILT_PATH)/images/kernel:kernel


# Kernel modules
DLKM_MODULES_PATH := $(PREBUILT_PATH)/modules/vendor_dlkm
RAMDISK_MODULES_PATH := $(PREBUILT_PATH)/modules/vendor_boot
SYSTEM_DLKM_MODULES_PATH := $(PREBUILT_PATH)/modules/system_dlkm/6.1.118-android14-11-o-g3d7ed9e9ccec

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(SYSTEM_DLKM_MODULES_PATH)/,$(TARGET_COPY_OUT_SYSTEM_DLKM)/lib/modules/6.1.118-android14-11-o-g3d7ed9e9ccec/)

BOARD_VENDOR_KERNEL_MODULES := $(wildcard $(DLKM_MODULES_PATH)/*.ko)
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(patsubst %,$(DLKM_MODULES_PATH)/%,$(shell cat $(DLKM_MODULES_PATH)/modules.load))
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := $(DLKM_MODULES_PATH)/modules.blocklist

BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(wildcard $(RAMDISK_MODULES_PATH)/*.ko)
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(patsubst %,$(RAMDISK_MODULES_PATH)/%,$(shell cat $(RAMDISK_MODULES_PATH)/modules.load))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD  := $(patsubst %,$(RAMDISK_MODULES_PATH)/%,$(shell cat $(RAMDISK_MODULES_PATH)/modules.load.recovery))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_BLOCKLIST_FILE := $(RAMDISK_MODULES_PATH)/modules.blocklist

# Include the proprietary files BoardConfig.
include vendor/realme/RMX3852/BoardConfigVendor.mk

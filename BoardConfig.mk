#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/realme/sm8635-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/bale

# Assert
TARGET_OTA_ASSERT_DEVICE := OP5929L1|OP595DL1

# Charging
TARGET_CHARGE_RATE_MULTIPLIER := 2000

# Camera
TARGET_CAMERA_SERVICE_EXT_LIB := //$(DEVICE_PATH):libcameraservice_extension.bale

# Kernel
TARGET_KERNEL_CONFIG += vendor/oplus/bale.config

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/realme/bale/BoardConfigVendor.mk

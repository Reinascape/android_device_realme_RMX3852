#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from RMX3852 device
$(call inherit-product, device/realme/RMX3852/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_RMX3852
PRODUCT_DEVICE := RMX3852
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3852

# GAPPS Build
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
PRODUCT_GMS_CLIENTID_BASE := android-realme
LINEAGE_BUILDTYPE := GAPPS

# VANILLA Build
#LINEAGE_BUILDTYPE := VANILLA

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Disable adb secure
WITH_ADB_INSECURE := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=realme/RMX3852/RE5C46L1:15/UKQ1.231108.001/U.264c017-72f53f-73833f:user/release-keys \
    DeviceName=RE5C46L1 \
    DeviceProduct=RMX3852 \
    SystemDevice=RE5C46L1 \
    SystemName=RMX3852

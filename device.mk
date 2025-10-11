#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2376
TARGET_SCREEN_WIDTH := 1080

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display_id_4630946450791512195.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946450791512195.xml \
    $(LOCAL_PATH)/configs/display_id_4630946614210407555.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946614210407555.xml \
    $(LOCAL_PATH)/configs/display_id_4630946994637926275.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946994637926275.xml \
    $(LOCAL_PATH)/configs/display_id_4630947039571902850.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947039571902850.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSettingsResTarget \
    OPlusSystemUIResTarget \
    OPlusWifiResTarget

# Regional properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/23622/build.default.prop:$(TARGET_COPY_OUT_ODM)/etc/23622/build.default.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator.service.oplus-richtap

$(call soong_config_set,OPLUS_LINEAGE_VIBRATOR_HAL,INCLUDE_DIR,$(LOCAL_PATH)/vibrator/include)

# WiFi firmware symlinks
PRODUCT_PACKAGES += \
    firmware_wlan_mac.bin_symlink \
    firmware_WCNSS_qcom_cfg.ini_symlink

# OMX
TARGET_SUPPORTS_OMX_SERVICE := false

# LiveDisplay
$(call soong_config_set,OPLUS_LINEAGE_LIVEDISPLAY_HAL,ENABLE_SE,false)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/realme/sm8635-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/realme/RMX3852/RMX3852-vendor.mk)

# Inherit from RMX3852 main mk
$(call inherit-product, device/realme/RMX3852/RMX3852.mk)

PRODUCT_NAME := lineage_RMX3852_GAPPS
PRODUCT_DEVICE := RMX3852
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3852

# GAPPS
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

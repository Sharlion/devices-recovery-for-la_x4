## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := x4

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/la/x4/device_x4.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x4
PRODUCT_NAME := cm_x4
PRODUCT_BRAND := la
PRODUCT_MODEL := x4
PRODUCT_MANUFACTURER := la

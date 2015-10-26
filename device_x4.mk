$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

LOCAL_PATH := device/la/x4

$(call inherit-product-if-exists, vendor/la/x4/x4-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/la/x4/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/factory_init.project.rc:recovery/root/factory_init.project.rc \
    $(LOCAL_PATH)/factory_init.rc:recovery/root/factory_init.rc \
    $(LOCAL_PATH)/enableswap.sh:recovery/root/enableswap.sh \
    $(LOCAL_PATH)/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
    $(LOCAL_PATH)/meta_init.project.rc:recovery/root/meta_init.project.rc \
    $(LOCAL_PATH)/meta_init.rc:recovery/root/meta_init.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_x4
PRODUCT_DEVICE := x4
PRODUCT_MODEL := la x4
PRODUCT_RELEASE_NAME := x4
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := la

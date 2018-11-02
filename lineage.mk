# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/highscreen/giraffe/lineage_310ds.mk)

LOCAL_PATH := device/htc/310ds

# Common CM stuff
CM_BUILD := 310ds

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=7.1.2/MRA58M/2280749:user/release-keys PRIVATE_BUILD_DESC="310ds-user 7.1.2 MRA58M 2280749 release-keys"

PRODUCT_NAME := lineage_310ds
PRODUCT_DEVICE := 310ds
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Desire 310

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="310ds"

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.310ds.rc:root/init.310ds.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.310ds:root/fstab.310ds

# Release name
PRODUCT_RELEASE_NAME := Desire 310

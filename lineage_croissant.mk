# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from croissant device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := Z01KD_1
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := lineage_croissant
PRODUCT_MODEL := ASUS_Z01KD

PRODUCT_GMS_CLIENTID_BASE := android-asus
TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := croissant
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="WW_Phone-user 9 PPR1.180610.009 16.0620.1910.19-0 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := asus/WW_Phone/ASUS_Z01KD_1:9/PPR1.180610.009/16.0620.1910.19-0:user/release-keys

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from LE9830 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lava
PRODUCT_DEVICE := LE9830
PRODUCT_MANUFACTURER := lava
PRODUCT_NAME := lineage_LE9830
PRODUCT_MODEL := LAVA LE9830

PRODUCT_GMS_CLIENTID_BASE := android-lava
TARGET_VENDOR := lava
TARGET_VENDOR_PRODUCT_NAME := LE9830
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k62v_op66-user 9 PPR1.180610.011 1560428847 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := LAVA/LE9830/LE9830:9/PPR1.180610.011/1560428847:user/release-keys

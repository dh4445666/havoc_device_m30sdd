# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m30s device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := m30s
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_m30s
PRODUCT_MODEL := SM-M307F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := m30s
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="m30sdd-user 9 PPR1.180610.011 FA90_M307FXXU2ASK2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/m30sdd/m30s:9/PPR1.180610.011/FA90_M307FXXU2ASK2:user/release-keys

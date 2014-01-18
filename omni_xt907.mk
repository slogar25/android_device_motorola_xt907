# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/cdma.mk)

$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := XT907
PRODUCT_NAME := omni_xt907

$(call inherit-product, device/motorola/xt907/device_xt907.mk)

PRODUCT_GMS_CLIENTID_BASE := android-verizon

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT907_verizon \
    BUILD_PRODUCT=scorpion_mini \
    BUILD_FINGERPRINT=motorola/XT907_verizon/scorpion_mini:4.1.2/9.8.1Q-66/28:user/release-keys

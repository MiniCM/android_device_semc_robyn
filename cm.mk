## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := X10mini

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/robyn/device_robyn.mk)

#
# Setup device specific product configuration.
#
PRODUCT_DEVICE := robyn
PRODUCT_NAME := cm_robyn
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := E10i
PRODUCT_MANUFACTURER := Sony Ericsson
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=E15i PRODUCT_NAME=E15i BUILD_ID=3.0.1.A.0.145 BUILD_DISPLAY_ID=3.0.1.A.0.145 BUILD_FINGERPRINT=SEMC/LT15i_1247-1073/LT15i:2.3.3/3.0.1.A.0.145/bn_p:user/release-keys PRIVATE_BUILD_DESC="LT15i-user 2.3.3 3.0.1.A.0.145 bn_P test-keys"


## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := X10mini

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
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=E10i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"

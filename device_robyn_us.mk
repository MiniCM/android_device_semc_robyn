$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/semc/robyn/device_robyn_us-vendor.mk)
$(call inherit-product, device/semc/robyn/device_robyn.mk)

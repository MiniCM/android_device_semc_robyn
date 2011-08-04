$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product-if-exists, vendor/semc/robyn/device_robyn_as-vendor.mk)
$(call inherit-product, device/semc/robyn/device_robyn.mk)

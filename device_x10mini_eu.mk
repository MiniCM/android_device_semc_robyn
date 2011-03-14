$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product-if-exists, vendor/htc/x10mini/device_x10mini_eu-vendor.mk)
$(call inherit-product, device/htc/x10mini/device_x10mini.mk)

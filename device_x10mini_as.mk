$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product-if-exists, vendor/htc/x10mini/device_x10mini_as-vendor.mk)
$(call inherit-product, device/htc/x10mini/device_x10mini.mk)

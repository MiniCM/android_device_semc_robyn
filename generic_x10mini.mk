# Inherit from those products. Most specific first.
$(call inherit-product, device/htc/x10mini/device_x10mini_us.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := generic_x10mini
PRODUCT_DEVICE := x10mini

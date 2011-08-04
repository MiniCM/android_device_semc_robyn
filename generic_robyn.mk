# Inherit from those products. Most specific first.
$(call inherit-product, device/semc/robyn/device_robyn_us.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := generic_robyn
PRODUCT_DEVICE := robyn

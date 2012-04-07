-include device/semc/msm7x27-common/BoardConfigCommon.mk
-include vendor/semc/robyn/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := robyn
TARGET_OTA_ASSERT_DEVICE := E10i,E10a,robyn
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=robyn


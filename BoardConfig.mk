-include device/semc/msm7x27-common/BoardConfigCommon.mk
-include vendor/semc/robyn/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := robyn
TARGET_OTA_ASSERT_DEVICE := E15i,E15a,E16i,E16a,robyn
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=robyn

BOARD_CAMERA_NO_AUTOFOCUS:=true

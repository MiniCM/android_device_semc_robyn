-include device/semc/msm7x27-common/BoardConfigCommon.mk
-include vendor/semc/robyn/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := robyn
TARGET_OTA_ASSERT_DEVICE := E10i,E10a,robyn
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=robyn
BOARD_USE_CUSTOM_RECOVERY_FONT := \"../../bootable/recovery/minui/font_7x16.h\"
DEVICE_RESOLUTION := 240x320

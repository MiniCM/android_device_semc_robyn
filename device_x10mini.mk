DEVICE_PACKAGE_OVERLAYS := device/se/x10mini/overlay

# HAL libs and other system binaries
PRODUCT_PACKAGES += \
    gps.x10mini \
    gralloc.x10mini \
    copybit.x10mini \
    sensors.x10mini \
    lights.x10mini \
    libcamera \
    libOmxCore \
    libmm-omxcore

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni \
    Torch
#    LiveWallpapers \
#    MagicSmokeWallpapers \
#    VisualizationWallpapers

# Passion uses high-density artwork where available
#PRODUCT_LOCALES += mdpi

# proprietary side of the device
$(call inherit-product-if-exists, vendor/se/x10mini/device_x10mini-vendor.mk)

# from device_dream_sapphire.mk
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# x10mini specific gps.conf

PRODUCT_COPY_FILES += \
    device/se/x10mini/gps.conf:system/etc/gps.conf

PRODUCT_PROPERTY_OVERRIDES := \
    ro.media.dec.jpeg.memcap=10000000

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    ro.ril.hsxpa=2 \
    ro.ril.gprsclass=10 \
    wifi.interface=wlan0

# Time between scans in seconds. Keep it high to minimize battery drain.
# This only affects the case in which there are remembered access points,
# but none are in range.
#
# Increase scan interval for Hero.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=45

# Configure agps cell location.  Must have Eclair libse_ril.so.

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.def.agps.mode=2 \
    ro.ril.def.agps.feature=1

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 160 dpi. 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120

# Default network type
# 0 => WCDMA Preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

# media configuration xml file
PRODUCT_COPY_FILES += \
    device/se/x10mini/media_profiles.xml:/system/etc/media_profiles.xml

# Turn off jni checks since they break FM Radio and Skype
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full.mk)


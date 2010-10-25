#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Kernel Targets
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/hero/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

KERNEL_NAME := 2.6.29.6-flykernel-11b

PRODUCT_COPY_FILES += \
    device/htc/hero/modules/modules.dep.bin:system/lib/modules/$(KERNEL_NAME)/modules.dep.bin \
    device/htc/hero/modules/modules.seriomap:system/lib/modules/$(KERNEL_NAME)/modules.seriomap \
    device/htc/hero/modules/modules.symbols:system/lib/modules/$(KERNEL_NAME)/modules.symbols \
    device/htc/hero/modules/modules.isapnpmap:system/lib/modules/$(KERNEL_NAME)/modules.isapnpmap \
    device/htc/hero/modules/modules.dep:system/lib/modules/$(KERNEL_NAME)/modules.dep \
    device/htc/hero/modules/modules.order:system/lib/modules/$(KERNEL_NAME)/modules.order \
    device/htc/hero/modules/modules.symbols.bin:system/lib/modules/$(KERNEL_NAME)/modules.symbols.bin \
    device/htc/hero/modules/modules.ofmap:system/lib/modules/$(KERNEL_NAME)/modules.ofmap \
    device/htc/hero/modules/modules.pcimap:system/lib/modules/$(KERNEL_NAME)/modules.pcimap \
    device/htc/hero/modules/modules.alias.bin:system/lib/modules/$(KERNEL_NAME)/modules.alias.bin \
    device/htc/hero/modules/modules.ieee1394map:system/lib/modules/$(KERNEL_NAME)/modules.ieee1394map \
    device/htc/hero/modules/modules.ccwmap:system/lib/modules/$(KERNEL_NAME)/modules.ccwmap \
    device/htc/hero/modules/modules.alias:system/lib/modules/$(KERNEL_NAME)/modules.alias \
    device/htc/hero/modules/ip_gre.ko:system/lib/modules/$(KERNEL_NAME)/kernel/net/ipv4/ip_gre.ko \
    device/htc/hero/modules/wlan.ko:system/lib/modules/$(KERNEL_NAME)/kernel/drivers/net/wireless/tiwlan1251/wlan.ko \
    device/htc/hero/modules/hid-dummy.ko:system/lib/modules/$(KERNEL_NAME)/kernel/drivers/hid/hid-dummy.ko \
    device/htc/hero/modules/cifs.ko:system/lib/modules/$(KERNEL_NAME)/kernel/fs/cifs/cifs.ko \
    device/htc/hero/modules/fuse.ko:system/lib/modules/$(KERNEL_NAME)/kernel/fs/fuse/fuse.ko \
    device/htc/hero/modules/modules.inputmap:system/lib/modules/$(KERNEL_NAME)/modules.inputmap \
    device/htc/hero/modules/modules.usbmap:system/lib/modules/$(KERNEL_NAME)/modules.usbmap \
    device/htc/hero/modules/wlan.ko:system/lib/modules/wlan.ko

DEVICE_PACKAGE_OVERLAYS := device/htc/hero/overlay

PRODUCT_PACKAGES += \
    librs_jni \
    sensors.hero \
    lights.hero 

# Passion uses high-density artwork where available
PRODUCT_LOCALES += mdpi

# proprietary side of the device
$(call inherit-product-if-exists, vendor/htc/hero/device_hero-vendor.mk)

# from device_dream_sapphire.mk
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# hero specific gps.conf

PRODUCT_COPY_FILES += \
    device/htc/heroc/gps.conf:system/etc/gps.conf

PRODUCT_PROPERTY_OVERRIDES := \
    ro.media.dec.jpeg.memcap=10000000

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libhtc_ril.so \
    ro.ril.hsxpa=2 \
    ro.ril.gprsclass=10 \
    wifi.interface=tiwlan0

# Time between scans in seconds. Keep it high to minimize battery drain.
# This only affects the case in which there are remembered access points,
# but none are in range.
#
# Increase scan interval for Hero.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=45

# Configure agps cell location.  Must have Eclair libhtc_ril.so.

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.def.agps.mode=2 \
    ro.ril.def.agps.feature=1

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 160 dpi. 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# Default network type
# 0 => WCDMA Preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

# media configuration xml file
PRODUCT_COPY_FILES += \
    device/htc/hero/media_profiles.xml:/system/etc/media_profiles.xml

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full.mk)


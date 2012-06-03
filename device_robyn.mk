$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/robyn/robyn-vendor.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := E10i
PRODUCT_DEVICE := robyn
PRODUCT_MODEL := E10i

#
# Boot files
#
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 160 dpi. 
PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=120

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.    
DEVICE_PACKAGE_OVERLAYS := device/semc/robyn/overlay

-include device/semc/msm7x27-common/msm7x27.mk

# Sensors lights
PRODUCT_PACKAGES += \
    sensors.robyn \
    lights.robyn \
    Torch

# media configuration xml file
PRODUCT_COPY_FILES += \
    device/semc/robyn/prebuilt/media_profiles.xml:/system/etc/media_profiles.xml

# Robyn uses low-density artwork where available
PRODUCT_AAPT_CONFIG := normal ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Extra prebuilt binaries
PRODUCT_COPY_FILES += \
    device/semc/robyn/prebuilt/hw_config.sh:system/etc/hw_config.sh

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/semc/robyn/prebuilt/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    device/semc/robyn/prebuilt/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini

# Themes
PRODUCT_COPY_FILES += \
    device/semc/robyn/prebuilt/minicm.png:system/usr/res/minicm.png \
    device/semc/robyn/prebuilt/bootanimation.zip:system/media/bootanimation.zip \
    device/semc/robyn/prebuilt/SuquashiInputMethod.apk:system/app/SuquashiInputMethod.apk

# Touchsceen
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# SEMC T9 k/b
PRODUCT_COPY_FILES += \
    device/semc/robyn/prebuilt/usr/zi/Basque/Zi8DatEUs.z8d:system/usr/zi/Basque/Zi8DatEUs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Danish/Zi8DatDAs.z8d:system/usr/zi/Danish/Zi8DatDAs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Estonian/Zi8DatETs.z8d:system/usr/zi/Estonian/Zi8DatETs.z8d \
    device/semc/robyn/prebuilt/usr/zi/German/Zi8DatDEs.z8d:system/usr/zi/German/Zi8DatDEs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Czech/Zi8DatCSs.z8d:system/usr/zi/Czech/Zi8DatCSs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Dutch/Zi8DatNLs.z8d:system/usr/zi/Dutch/Zi8DatNLs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Greek/Zi8DatELs.z8d:system/usr/zi/Greek/Zi8DatELs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Malay/Zi8DatMSs.z8d:system/usr/zi/Malay/Zi8DatMSs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Catalan/Zi8DatCAs.z8d:system/usr/zi/Catalan/Zi8DatCAs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Romanian/Zi8DatROs.z8d:system/usr/zi/Romanian/Zi8DatROs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Polish/Zi8DatPLs.z8d:system/usr/zi/Polish/Zi8DatPLs.z8d \
    device/semc/robyn/prebuilt/usr/zi/French_CA/Zi8DatFRCAs.z8d:system/usr/zi/French_CA/Zi8DatFRCAs.z8d \
    device/semc/robyn/prebuilt/usr/zi/French_EU/Zi8DatFREUs.z8d:system/usr/zi/French_EU/Zi8DatFREUs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Slovak/Zi8DatSKs.z8d:system/usr/zi/Slovak/Zi8DatSKs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Lithuanian/Zi8DatLTs.z8d:system/usr/zi/Lithuanian/Zi8DatLTs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Italian/Zi8DatITs.z8d:system/usr/zi/Italian/Zi8DatITs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Ukrainian/Zi8DatUKs.z8d:system/usr/zi/Ukrainian/Zi8DatUKs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Hungarian/Zi8DatHUs.z8d:system/usr/zi/Hungarian/Zi8DatHUs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Spanish_EU/Zi8DatESEUs.z8d:system/usr/zi/Spanish_EU/Zi8DatESEUs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Spanish_SA/Zi8DatESSAs.z8d:system/usr/zi/Spanish_SA/Zi8DatESSAs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Galician/Zi8DatGLs.z8d:system/usr/zi/Galician/Zi8DatGLs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Latvian/Zi8DatLVs.z8d:system/usr/zi/Latvian/Zi8DatLVs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Serbian/Zi8DatSRLAs.z8d:system/usr/zi/Serbian/Zi8DatSRLAs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Slovenian/Zi8DatSLs.z8d:system/usr/zi/Slovenian/Zi8DatSLs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Croatian/Zi8DatHRs.z8d:system/usr/zi/Croatian/Zi8DatHRs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Indonesian/Zi8DatINs.z8d:system/usr/zi/Indonesian/Zi8DatINs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Russian/Zi8DatRU.z8d:system/usr/zi/Russian/Zi8DatRU.z8d \
    device/semc/robyn/prebuilt/usr/zi/Tagalog/Zi8DatTLs.z8d:system/usr/zi/Tagalog/Zi8DatTLs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Bulgarian/Zi8DatBGs.z8d:system/usr/zi/Bulgarian/Zi8DatBGs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Finnish/Zi8DatFIs.z8d:system/usr/zi/Finnish/Zi8DatFIs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Swedish/Zi8DatSVs.z8d:system/usr/zi/Swedish/Zi8DatSVs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Norwegian/Zi8DatNOs.z8d:system/usr/zi/Norwegian/Zi8DatNOs.z8d \
    device/semc/robyn/prebuilt/usr/zi/English_AM/Zi8DatENAMs.z8d:system/usr/zi/English_AM/Zi8DatENAMs.z8d \
    device/semc/robyn/prebuilt/usr/zi/English_UK/Zi8DatENUKs.z8d:system/usr/zi/English_UK/Zi8DatENUKs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Turkish/Zi8DatTRs.z8d:system/usr/zi/Turkish/Zi8DatTRs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d:system/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d \
    device/semc/robyn/prebuilt/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d:system/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d \
    device/semc/robyn/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/semc/robyn/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/semc/robyn/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \
    device/semc/robyn/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/kaz.xml:system/usr/keyboard-config/languages/kaz.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/deu.xml:system/usr/keyboard-config/languages/deu.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/fra_ca.xml:system/usr/keyboard-config/languages/fra_ca.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/por_br.xml:system/usr/keyboard-config/languages/por_br.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/lav.xml:system/usr/keyboard-config/languages/lav.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/ron.xml:system/usr/keyboard-config/languages/ron.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/lit.xml:system/usr/keyboard-config/languages/lit.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/ell.xml:system/usr/keyboard-config/languages/ell.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/eng.xml:system/usr/keyboard-config/languages/eng.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/rus.xml:system/usr/keyboard-config/languages/rus.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/eng_us.xml:system/usr/keyboard-config/languages/eng_us.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/slk.xml:system/usr/keyboard-config/languages/slk.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/numberDecimal.xml:system/usr/keyboard-config/languages/numberDecimal.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/slv.xml:system/usr/keyboard-config/languages/slv.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/spa.xml:system/usr/keyboard-config/languages/spa.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/spa_la.xml:system/usr/keyboard-config/languages/spa_la.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/est.xml:system/usr/keyboard-config/languages/est.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/sqi.xml:system/usr/keyboard-config/languages/sqi.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/fin.xml:system/usr/keyboard-config/languages/fin.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/tgl.xml:system/usr/keyboard-config/languages/tgl.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/srp.xml:system/usr/keyboard-config/languages/srp.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/eus.xml:system/usr/keyboard-config/languages/eus.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/sun.xml:system/usr/keyboard-config/languages/sun.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/numberNatural.xml:system/usr/keyboard-config/languages/numberNatural.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/swe.xml:system/usr/keyboard-config/languages/swe.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/fra.xml:system/usr/keyboard-config/languages/fra.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/msa.xml:system/usr/keyboard-config/languages/msa.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/glg.xml:system/usr/keyboard-config/languages/glg.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/nld.xml:system/usr/keyboard-config/languages/nld.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/tur.xml:system/usr/keyboard-config/languages/tur.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/ukr.xml:system/usr/keyboard-config/languages/ukr.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/nor.xml:system/usr/keyboard-config/languages/nor.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/phone.xml:system/usr/keyboard-config/languages/phone.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/numberInteger.xml:system/usr/keyboard-config/languages/numberInteger.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/hrv.xml:system/usr/keyboard-config/languages/hrv.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/hun.xml:system/usr/keyboard-config/languages/hun.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/cat.xml:system/usr/keyboard-config/languages/cat.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/jav.xml:system/usr/keyboard-config/languages/jav.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/ind.xml:system/usr/keyboard-config/languages/ind.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/bos.xml:system/usr/keyboard-config/languages/bos.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/ces.xml:system/usr/keyboard-config/languages/ces.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/pol.xml:system/usr/keyboard-config/languages/pol.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/por.xml:system/usr/keyboard-config/languages/por.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/ita.xml:system/usr/keyboard-config/languages/ita.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/isl.xml:system/usr/keyboard-config/languages/isl.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/bul.xml:system/usr/keyboard-config/languages/bul.xml \
    device/semc/robyn/prebuilt/usr/keyboard-config/languages/dan.xml:system/usr/keyboard-config/languages/dan.xml


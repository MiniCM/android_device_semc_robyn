#!/bin/sh

DEVICE=x10mini
LOCAL_PROPR_DIR=~/xrecovery/backup/2011-02-06.18.11.31
mkdir -p ../../../vendor/htc/$DEVICE/proprietary
if [ $# = 1 ]
then
    echo "Pulling from device..."
    adb pull /system/bin/akmd2 ../../../vendor/htc/$DEVICE/proprietary/akmd2
    chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd2
    adb pull /system/bin/mm-venc-omx-test ../../../vendor/htc/$DEVICE/proprietary/mm-venc-omx-test
    chmod 755 ../../../vendor/htc/$DEVICE/proprietary/mm-venc-omx-test
    adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/htc/$DEVICE/proprietary/01_qcomm_omx.cfg
    adb pull /system/etc/firmware/TIInit_7.2.31.bts ../../../vendor/htc/$DEVICE/proprietary/TIInit_7.2.31.bts
    adb pull /system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fm_rx_init_1273.1.bts
    adb pull /system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fm_rx_init_1273.2.bts
    adb pull /system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fm_tx_init_1273.1.bts
    adb pull /system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fm_tx_init_1273.2.bts
    adb pull /system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fmc_init_1273.1.bts
    adb pull /system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fmc_init_1273.2.bts
    adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pfp.fw
    adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pm4.fw
    adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libEGL_adreno200.so
    adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
    adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv2_adreno200.so
    adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libq3dtools_adreno200.so
    adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary/libcamera.so
    adb pull /system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary/libgps.so
    adb pull /system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary/libgsl.so
    adb pull /system/lib/libril-qc-1.so ../../../vendor/htc/$DEVICE/proprietary/libril-qc-1.so
    adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary/liboemcamera.so
    adb pull /system/lib/libfm_stack.so ../../../vendor/htc/$DEVICE/proprietary/libfm_stack.so
    adb pull /system/lib/hw/gralloc.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/gralloc.msm7k.so
    adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary/libaudioeq.so
    #adb pull /system/lib/libreference-ril.so ../../../vendor/htc/$DEVICE/proprietary/libreference-ril.so
    #adb pull /system/etc/AudioFilter.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilter.csv
    adb pull /system/lib/libmm-adspsvc.so ../../../vendor/htc/$DEVICE/proprietary/libmm-adspsvc.so
    adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary/liboemcamera.so
    adb pull /system/lib/libOmxCore.so ../../../vendor/htc/$DEVICE/proprietary/libOmxCore.so
    adb pull /system/lib/libOmxH264Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxH264Dec.so
    adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxMpeg4Dec.so
    adb pull /system/lib/libOmxVidEnc.so ../../../vendor/htc/$DEVICE/proprietary/libOmxVidEnc.so
    adb pull /system/lib/libOmxWmaDec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxWmaDec.so
    adb pull /system/lib/modules/tiwlan_drv.ko ../../../vendor/htc/$DEVICE/proprietary/tiwlan_drv.ko
    adb pull /system/lib/modules/sdio.ko ../../../vendor/htc/$DEVICE/proprietary/sdio.ko
    adb pull /system/lib/modules/jbd.ko ../../../vendor/htc/$DEVICE/proprietary/jbd.ko
    adb pull /system/lib/modules/ext3.ko ../../../vendor/htc/$DEVICE/proprietary/ext3.ko
    adb pull /system/lib/modules/jbd2.ko ../../../vendor/htc/$DEVICE/proprietary/jbd2.ko
    adb pull /system/lib/modules/ext4.ko ../../../vendor/htc/$DEVICE/proprietary/ext4.ko

    adb pull /system/bin/drmdbbackup ../../../vendor/htc/$DEVICE/proprietary/drmdbbackup
    adb pull /system/bin/kexec-tool ../../../vendor/htc/$DEVICE/proprietary/kexec-tool
    adb pull /system/bin/nvimport ../../../vendor/htc/$DEVICE/proprietary/nvimport
    adb pull /system/bin/semc_chargalg ../../../vendor/htc/$DEVICE/proprietary/semc_chargalg
    adb pull /system/bin/suntrolkac ../../../vendor/htc/$DEVICE/proprietary/suntrolkac
    adb pull /system/bin/DxDrmServerIpc ../../../vendor/htc/$DEVICE/proprietary/DxDrmServerIpc
    adb pull /system/drm/DxDrm/DxDrmConfig.txt ../../../vendor/htc/$DEVICE/proprietary/DxDrmConfig.txt
    adb pull /system/drm/DxDrm/DxDrmConfig_Server.txt ../../../vendor/htc/$DEVICE/proprietary/DxDrmConfig_Server.txt
    adb pull /system/drm/DxDrm/init_drm.rc ../../../vendor/htc/$DEVICE/proprietary/init_drm.rc
    adb pull /system/etc/AudioFilterPlatform.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilterPlatform.csv
    adb pull /system/etc/AudioFilterProduct.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilterProduct.csv
    adb pull /system/etc/hw_config.sh ../../../vendor/htc/$DEVICE/proprietary/hw_config.sh
    adb pull /system/lib/libhardware_legacy.so ../../../vendor/htc/$DEVICE/proprietary/libhardware_legacy.so

## extra libs to pull from device
    adb pull /system/lib/hw/lights.default.so ../../../vendor/htc/$DEVICE/proprietary/lights.default.so
    adb pull /system/lib/hw/gralloc.default.so ../../../vendor/htc/$DEVICE/proprietary/gralloc.default.so
    adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/copybit.msm7k.so
    adb pull /system/lib/hw/sensors.default.so ../../../vendor/htc/$DEVICE/proprietary/sensors.default.so
    adb pull /system/lib/hw/hal_seport.default.so ../../../vendor/htc/$DEVICE/proprietary/hal_seport.default.so
    adb pull /system/lib/libvdmengine.so ../../../vendor/htc/$DEVICE/proprietary/libvdmengine.so
    adb pull /system/lib/libloc.so ../../../vendor/htc/$DEVICE/proprietary/libloc.so
    adb pull /system/lib/libmmgsdilib.so ../../../vendor/htc/$DEVICE/proprietary/libmmgsdilib.so
    adb pull /system/lib/libqmi.so ../../../vendor/htc/$DEVICE/proprietary/libqmi.so
    adb pull /system/lib/libril.so ../../../vendor/htc/$DEVICE/proprietary/libril.so
    adb pull /system/lib/libloc-rpc.so ../../../vendor/htc/$DEVICE/proprietary/libloc-rpc.so
    adb pull /system/lib/libsystemconnector/libuinputdevicejni.so ../../../vendor/htc/$DEVICE/proprietary/libuinputdevicejni.so
    adb pull /system/lib/libwms.so ../../../vendor/htc/$DEVICE/proprietary/libwms.so
    adb pull /system/lib/libfuse.so ../../../vendor/htc/$DEVICE/proprietary/libfuse.so
    adb pull /system/lib/libpbmlib.so ../../../vendor/htc/$DEVICE/proprietary/libpbmlib.so
    adb pull /system/lib/libqueue.so ../../../vendor/htc/$DEVICE/proprietary/libqueue.so
    adb pull /system/lib/liboncrpc.so ../../../vendor/htc/$DEVICE/proprietary/liboncrpc.so
    adb pull /system/lib/libmiscta.so ../../../vendor/htc/$DEVICE/proprietary/libmiscta.so
    adb pull /system/lib/libfacedetect.so ../../../vendor/htc/$DEVICE/proprietary/libfacedetect.so
    adb pull /system/lib/libsystemconnector_hal_jni.so ../../../vendor/htc/$DEVICE/proprietary/libsystemconnector_hal_jni.so
    adb pull /system/lib/libgsdi_exp.so ../../../vendor/htc/$DEVICE/proprietary/libgsdi_exp.so
    adb pull /system/lib/libauth.so ../../../vendor/htc/$DEVICE/proprietary/libauth.so
    adb pull /system/lib/libskiagl.so ../../../vendor/htc/$DEVICE/proprietary/libskiagl.so
    adb pull /system/lib/libmmjpeg.so ../../../vendor/htc/$DEVICE/proprietary/libmmjpeg.so
    adb pull /system/lib/libwpa_client.so ../../../vendor/htc/$DEVICE/proprietary/libwpa_client.so
    adb pull /system/lib/libaudio.so ../../../vendor/htc/$DEVICE/proprietary/libaudio.so
    adb pull /system/lib/libreference-ril.so ../../../vendor/htc/$DEVICE/proprietary/libreference-ril.so
    adb pull /system/lib/libmmipl.so ../../../vendor/htc/$DEVICE/proprietary/libmmipl.so
    adb pull /system/lib/libdiag.so ../../../vendor/htc/$DEVICE/proprietary/libdiag.so
    adb pull /system/lib/libcm.so ../../../vendor/htc/$DEVICE/proprietary/libcm.so
    adb pull /system/lib/libnv.so ../../../vendor/htc/$DEVICE/proprietary/libnv.so
    adb pull /system/lib/libvdmfumo.so ../../../vendor/htc/$DEVICE/proprietary/libvdmfumo.so
    adb pull /system/lib/libZiEngine.so ../../../vendor/htc/$DEVICE/proprietary/libZiEngine.so
    adb pull /system/lib/libgstk_exp.so ../../../vendor/htc/$DEVICE/proprietary/libgstk_exp.so
    adb pull /system/lib/libfacedetectjnitest.so ../../../vendor/htc/$DEVICE/proprietary/libfacedetectjnitest.so
    adb pull /system/lib/libcommondefs.so ../../../vendor/htc/$DEVICE/proprietary/libcommondefs.so
    adb pull /system/lib/libwmsts.so ../../../vendor/htc/$DEVICE/proprietary/libwmsts.so
    adb pull /system/lib/libdll.so ../../../vendor/htc/$DEVICE/proprietary/libdll.so
    adb pull /system/lib/libdsm.so ../../../vendor/htc/$DEVICE/proprietary/libdsm.so
    adb pull /system/lib/libdss.so ../../../vendor/htc/$DEVICE/proprietary/libdss.so

else
    echo "Copying from $LOCAL_PROPR_DIR ..."
    cp -pr $LOCAL_PROPR_DIR/system/bin/akmd2 ../../../vendor/htc/$DEVICE/proprietary/akmd2
    chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd2
    cp -pr $LOCAL_PROPR_DIR/system/bin/mm-venc-omx-test ../../../vendor/htc/$DEVICE/proprietary/mm-venc-omx-test
    chmod 755 ../../../vendor/htc/$DEVICE/proprietary/mm-venc-omx-test
    cp -pr $LOCAL_PROPR_DIR/system/etc/01_qcomm_omx.cfg ../../../vendor/htc/$DEVICE/proprietary/01_qcomm_omx.cfg
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/TIInit_7.2.31.bts ../../../vendor/htc/$DEVICE/proprietary/TIInit_7.2.31.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fm_rx_init_1273.1.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fm_rx_init_1273.2.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fm_tx_init_1273.1.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fm_tx_init_1273.2.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fmc_init_1273.1.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fmc_init_1273.2.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/yamato_pfp.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pfp.fw
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/yamato_pm4.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pm4.fw
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libEGL_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv2_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libq3dtools_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libq3dtools_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary/libcamera.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary/libgps.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary/libgsl.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libril-qc-1.so ../../../vendor/htc/$DEVICE/proprietary/libril-qc-1.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary/liboemcamera.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfm_stack.so ../../../vendor/htc/$DEVICE/proprietary/libfm_stack.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/gralloc.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/gralloc.msm7k.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary/libaudioeq.so
    #cp -pr $LOCAL_PROPR_DIR/system/lib/libreference-ril.so ../../../vendor/htc/$DEVICE/proprietary/libreference-ril.so
    #cp -pr $LOCAL_PROPR_DIR/system/etc/AudioFilter.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilter.csv
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmm-adspsvc.so ../../../vendor/htc/$DEVICE/proprietary/libmm-adspsvc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary/liboemcamera.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxCore.so ../../../vendor/htc/$DEVICE/proprietary/libOmxCore.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxH264Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxH264Dec.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxMpeg4Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxMpeg4Dec.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxVidEnc.so ../../../vendor/htc/$DEVICE/proprietary/libOmxVidEnc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxWmaDec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxWmaDec.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/modules/tiwlan_drv.ko ../../../vendor/htc/$DEVICE/proprietary/tiwlan_drv.ko
    cp -pr $LOCAL_PROPR_DIR/system/lib/modules/sdio.ko ../../../vendor/htc/$DEVICE/proprietary/sdio.ko
    cp -pr $LOCAL_PROPR_DIR/system/lib/modules/jbd.ko ../../../vendor/htc/$DEVICE/proprietary/jbd.ko
    cp -pr $LOCAL_PROPR_DIR/system/lib/modules/ext3.ko ../../../vendor/htc/$DEVICE/proprietary/ext3.ko
    cp -pr $LOCAL_PROPR_DIR/system/lib/modules/jbd2.ko ../../../vendor/htc/$DEVICE/proprietary/jbd2.ko
    cp -pr $LOCAL_PROPR_DIR/system/lib/modules/ext4.ko ../../../vendor/htc/$DEVICE/proprietary/ext4.ko

    cp -pr $LOCAL_PROPR_DIR/system/bin/drmdbbackup ../../../vendor/htc/$DEVICE/proprietary/drmdbbackup
    cp -pr $LOCAL_PROPR_DIR/system/bin/kexec-tool ../../../vendor/htc/$DEVICE/proprietary/kexec-tool
    cp -pr $LOCAL_PROPR_DIR/system/bin/nvimport ../../../vendor/htc/$DEVICE/proprietary/nvimport
    cp -pr $LOCAL_PROPR_DIR/system/bin/semc_chargalg ../../../vendor/htc/$DEVICE/proprietary/semc_chargalg
    cp -pr $LOCAL_PROPR_DIR/system/bin/suntrolkac ../../../vendor/htc/$DEVICE/proprietary/suntrolkac
    cp -pr $LOCAL_PROPR_DIR/system/bin/DxDrmServerIpc ../../../vendor/htc/$DEVICE/proprietary/DxDrmServerIpc
    cp -pr $LOCAL_PROPR_DIR/system/drm/DxDrm/DxDrmConfig.txt ../../../vendor/htc/$DEVICE/proprietary/DxDrmConfig.txt
    cp -pr $LOCAL_PROPR_DIR/system/drm/DxDrm/DxDrmConfig_Server.txt ../../../vendor/htc/$DEVICE/proprietary/DxDrmConfig_Server.txt
    cp -pr $LOCAL_PROPR_DIR/system/drm/DxDrm/init_drm.rc ../../../vendor/htc/$DEVICE/proprietary/init_drm.rc
    cp -pr $LOCAL_PROPR_DIR/system/etc/AudioFilterPlatform.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilterPlatform.csv
    cp -pr $LOCAL_PROPR_DIR/system/etc/AudioFilterProduct.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilterProduct.csv
    cp -pr $LOCAL_PROPR_DIR/system/etc/hw_config.sh ../../../vendor/htc/$DEVICE/proprietary/hw_config.sh
    cp -pr $LOCAL_PROPR_DIR/system/lib/libhardware_legacy.so ../../../vendor/htc/$DEVICE/proprietary/libhardware_legacy.so

## extra libs to pull from device
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/lights.default.so ../../../vendor/htc/$DEVICE/proprietary/lights.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/gralloc.default.so ../../../vendor/htc/$DEVICE/proprietary/gralloc.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/copybit.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/copybit.msm7k.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/sensors.default.so ../../../vendor/htc/$DEVICE/proprietary/sensors.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/hal_seport.default.so ../../../vendor/htc/$DEVICE/proprietary/hal_seport.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libvdmengine.so ../../../vendor/htc/$DEVICE/proprietary/libvdmengine.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libloc.so ../../../vendor/htc/$DEVICE/proprietary/libloc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmmgsdilib.so ../../../vendor/htc/$DEVICE/proprietary/libmmgsdilib.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libqmi.so ../../../vendor/htc/$DEVICE/proprietary/libqmi.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libril.so ../../../vendor/htc/$DEVICE/proprietary/libril.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libloc-rpc.so ../../../vendor/htc/$DEVICE/proprietary/libloc-rpc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libsystemconnector/libuinputdevicejni.so ../../../vendor/htc/$DEVICE/proprietary/libuinputdevicejni.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libwms.so ../../../vendor/htc/$DEVICE/proprietary/libwms.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfuse.so ../../../vendor/htc/$DEVICE/proprietary/libfuse.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libpbmlib.so ../../../vendor/htc/$DEVICE/proprietary/libpbmlib.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libqueue.so ../../../vendor/htc/$DEVICE/proprietary/libqueue.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/liboncrpc.so ../../../vendor/htc/$DEVICE/proprietary/liboncrpc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmiscta.so ../../../vendor/htc/$DEVICE/proprietary/libmiscta.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfacedetect.so ../../../vendor/htc/$DEVICE/proprietary/libfacedetect.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libsystemconnector_hal_jni.so ../../../vendor/htc/$DEVICE/proprietary/libsystemconnector_hal_jni.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgsdi_exp.so ../../../vendor/htc/$DEVICE/proprietary/libgsdi_exp.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libauth.so ../../../vendor/htc/$DEVICE/proprietary/libauth.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libskiagl.so ../../../vendor/htc/$DEVICE/proprietary/libskiagl.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmmjpeg.so ../../../vendor/htc/$DEVICE/proprietary/libmmjpeg.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libwpa_client.so ../../../vendor/htc/$DEVICE/proprietary/libwpa_client.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libaudio.so ../../../vendor/htc/$DEVICE/proprietary/libaudio.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libreference-ril.so ../../../vendor/htc/$DEVICE/proprietary/libreference-ril.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmmipl.so ../../../vendor/htc/$DEVICE/proprietary/libmmipl.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libdiag.so ../../../vendor/htc/$DEVICE/proprietary/libdiag.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libcm.so ../../../vendor/htc/$DEVICE/proprietary/libcm.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libnv.so ../../../vendor/htc/$DEVICE/proprietary/libnv.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libvdmfumo.so ../../../vendor/htc/$DEVICE/proprietary/libvdmfumo.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libZiEngine.so ../../../vendor/htc/$DEVICE/proprietary/libZiEngine.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgstk_exp.so ../../../vendor/htc/$DEVICE/proprietary/libgstk_exp.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfacedetectjnitest.so ../../../vendor/htc/$DEVICE/proprietary/libfacedetectjnitest.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libcommondefs.so ../../../vendor/htc/$DEVICE/proprietary/libcommondefs.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libwmsts.so ../../../vendor/htc/$DEVICE/proprietary/libwmsts.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libdll.so ../../../vendor/htc/$DEVICE/proprietary/libdll.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libdsm.so ../../../vendor/htc/$DEVICE/proprietary/libdsm.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libdss.so ../../../vendor/htc/$DEVICE/proprietary/libdss.so

fi

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/device_$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/htc/__DEVICE__/extract-files.sh

PRODUCT_COPY_FILES := \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:obj/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so

PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/akmd2:system/bin/akmd2 \\
    vendor/htc/__DEVICE__/proprietary/mm-venc-omx-test:system/bin/mm-venc-omx-test \\
    vendor/htc/__DEVICE__/proprietary/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \\
    vendor/htc/__DEVICE__/proprietary/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts \\
    vendor/htc/__DEVICE__/proprietary/fm_rx_init_1273.1.bts:system/etc/firmware/fm_rx_init_1273.1.bts \\
    vendor/htc/__DEVICE__/proprietary/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \\
    vendor/htc/__DEVICE__/proprietary/fm_tx_init_1273.1.bts:system/etc/firmware/fm_tx_init_1273.1.bts \\
    vendor/htc/__DEVICE__/proprietary/fm_tx_init_1273.2.bts:system/etc/firmware/fm_tx_init_1273.2.bts \\
    vendor/htc/__DEVICE__/proprietary/fmc_init_1273.1.bts:system/etc/firmware/fmc_init_1273.1.bts \\
    vendor/htc/__DEVICE__/proprietary/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \\
    vendor/htc/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/htc/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:system/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libfm_stack.so:system/lib/libfm_stack.so \\
    vendor/htc/__DEVICE__/proprietary/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/htc/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so

# Kernel modules
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \\
    vendor/htc/__DEVICE__/proprietary/sdio.ko:system/lib/modules/sdio.ko \\
    vendor/htc/__DEVICE__/proprietary/jbd.ko:system/lib/modules/jbd.ko \\
    vendor/htc/__DEVICE__/proprietary/ext3.ko:system/lib/modules/ext3.ko \\
    vendor/htc/__DEVICE__/proprietary/jbd2.ko:system/lib/modules/jbd2.ko \\
    vendor/htc/__DEVICE__/proprietary/ext4.ko:system/lib/modules/ext4.ko

PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/drmdbbackup:/system/bin/drmdbbackup \\
    vendor/htc/__DEVICE__/proprietary/kexec-tool:/system/bin/kexec-tool \\
    vendor/htc/__DEVICE__/proprietary/nvimport:/system/bin/nvimport \\
    vendor/htc/__DEVICE__/proprietary/semc_chargalg:/system/bin/semc_chargalg \\
    vendor/htc/__DEVICE__/proprietary/suntrolkac:/system/bin/suntrolkac \\
    vendor/htc/__DEVICE__/proprietary/DxDrmServerIpc:/system/bin/DxDrmServerIpc \\
    vendor/htc/__DEVICE__/proprietary/DxDrmConfig.txt:/system/drm/DxDrm/DxDrmConfig.txt \\
    vendor/htc/__DEVICE__/proprietary/DxDrmConfig_Server.txt:/system/drm/DxDrm/DxDrmConfig_Server.txt \\
    vendor/htc/__DEVICE__/proprietary/init_drm.rc:/system/drm/DxDrm/init_drm.rc \\
    vendor/htc/__DEVICE__/proprietary/AudioFilterPlatform.csv:/system/etc/AudioFilterPlatform.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioFilterProduct.csv:/system/etc/AudioFilterProduct.csv \\
    vendor/htc/__DEVICE__/proprietary/hw_config.sh:/system/etc/hw_config.sh \\
    vendor/htc/__DEVICE__/proprietary/libhardware_legacy.so:/system/lib/libhardware_legacy.so

## extra libs to pull from device
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/lights.default.so:/system/lib/hw/lights.default.so \\
    vendor/htc/__DEVICE__/proprietary/gralloc.default.so:/system/lib/hw/gralloc.default.so \\
    vendor/htc/__DEVICE__/proprietary/copybit.msm7k.so:/system/lib/hw/copybit.msm7k.so \\
    vendor/htc/__DEVICE__/proprietary/sensors.default.so:/system/lib/hw/sensors.default.so \\
    vendor/htc/__DEVICE__/proprietary/hal_seport.default.so:/system/lib/hw/hal_seport.default.so \\
    vendor/htc/__DEVICE__/proprietary/libvdmengine.so:/system/lib/libvdmengine.so \\
    vendor/htc/__DEVICE__/proprietary/libloc.so:/system/lib/libloc.so \\
    vendor/htc/__DEVICE__/proprietary/libmmgsdilib.so:/system/lib/libmmgsdilib.so \\
    vendor/htc/__DEVICE__/proprietary/libqmi.so:/system/lib/libqmi.so \\
    vendor/htc/__DEVICE__/proprietary/libril.so:/system/lib/libril.so \\
    vendor/htc/__DEVICE__/proprietary/libloc-rpc.so:/system/lib/libloc-rpc.so \\
    vendor/htc/__DEVICE__/proprietary/libuinputdevicejni.so:/system/lib/libsystemconnector/libuinputdevicejni.so \\
    vendor/htc/__DEVICE__/proprietary/libwms.so:/system/lib/libwms.so \\
    vendor/htc/__DEVICE__/proprietary/libfuse.so:/system/lib/libfuse.so \\
    vendor/htc/__DEVICE__/proprietary/libpbmlib.so:/system/lib/libpbmlib.so \\
    vendor/htc/__DEVICE__/proprietary/libqueue.so:/system/lib/libqueue.so \\
    vendor/htc/__DEVICE__/proprietary/liboncrpc.so:/system/lib/liboncrpc.so \\
    vendor/htc/__DEVICE__/proprietary/libmiscta.so:/system/lib/libmiscta.so \\
    vendor/htc/__DEVICE__/proprietary/libfacedetect.so:/system/lib/libfacedetect.so \\
    vendor/htc/__DEVICE__/proprietary/libsystemconnector_hal_jni.so:/system/lib/libsystemconnector_hal_jni.so \\
    vendor/htc/__DEVICE__/proprietary/libgsdi_exp.so:/system/lib/libgsdi_exp.so \\
    vendor/htc/__DEVICE__/proprietary/libauth.so:/system/lib/libauth.so \\
    vendor/htc/__DEVICE__/proprietary/libskiagl.so:/system/lib/libskiagl.so \\
    vendor/htc/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/htc/__DEVICE__/proprietary/libwpa_client.so:/system/lib/libwpa_client.so \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:/system/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libreference-ril.so:/system/lib/libreference-ril.so \\
    vendor/htc/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/htc/__DEVICE__/proprietary/libdiag.so:/system/lib/libdiag.so \\
    vendor/htc/__DEVICE__/proprietary/libcm.so:/system/lib/libcm.so \\
    vendor/htc/__DEVICE__/proprietary/libnv.so:/system/lib/libnv.so \\
    vendor/htc/__DEVICE__/proprietary/libvdmfumo.so:/system/lib/libvdmfumo.so \\
    vendor/htc/__DEVICE__/proprietary/libZiEngine.so:/system/lib/libZiEngine.so \\
    vendor/htc/__DEVICE__/proprietary/libgstk_exp.so:/system/lib/libgstk_exp.so \\
    vendor/htc/__DEVICE__/proprietary/libfacedetectjnitest.so:/system/lib/libfacedetectjnitest.so \\
    vendor/htc/__DEVICE__/proprietary/libcommondefs.so:/system/lib/libcommondefs.so \\
    vendor/htc/__DEVICE__/proprietary/libwmsts.so:/system/lib/libwmsts.so \\
    vendor/htc/__DEVICE__/proprietary/libdll.so:/system/lib/libdll.so \\
    vendor/htc/__DEVICE__/proprietary/libdsm.so:/system/lib/libdsm.so \\
    vendor/htc/__DEVICE__/proprietary/libdss.so:/system/lib/libdss.so

EOF

./setup-makefiles.sh

#!/bin/sh

DEVICE=x10mini
LOCAL_PROPR_DIR=~/xrecovery/x10mini/2011-02-06.18.11.31
mkdir -p ../../../vendor/htc/$DEVICE/proprietary
if [ $# = 1 ]
then
    echo "Pulling from device..."
    adb pull /system/bin/akmd2 ../../../vendor/htc/$DEVICE/proprietary/akmd2
    chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd2
    adb pull /system/bin/mm-venc-omx-test ../../../vendor/htc/$DEVICE/proprietary/mm-venc-omx-test
    chmod 755 ../../../vendor/htc/$DEVICE/proprietary/mm-venc-omx-test
    adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/htc/$DEVICE/proprietary/01_qcomm_omx.cfg
    adb pull /system/etc/tiwlan_firmware.bin ../../../vendor/htc/$DEVICE/proprietary/tiwlan_firmware.bin
    #adb pull /system/etc/dhcpcd/dhcpcd.conf ../../../vendor/htc/$DEVICE/proprietary/dhcpcd.conf
    adb pull /system/etc/firmware/TIInit_7.2.31.bts ../../../vendor/htc/$DEVICE/proprietary/TIInit_7.2.31.bts
    adb pull /system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fm_rx_init_1273.1.bts
    adb pull /system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fm_rx_init_1273.2.bts
    adb pull /system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fm_tx_init_1273.1.bts
    adb pull /system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fm_tx_init_1273.2.bts
    adb pull /system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fmc_init_1273.1.bts
    adb pull /system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fmc_init_1273.2.bts
    adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pfp.fw
    adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pm4.fw
    adb pull /system/etc/permissions/com.dsi.ant.antradio_library.xml ../../../vendor/htc/$DEVICE/proprietary/com.dsi.ant.antradio_library.xml
    adb pull /system/etc/permissions/com.sonyericsson.smfmf.xml ../../../vendor/htc/$DEVICE/proprietary/com.sonyericsson.smfmf.xml
    adb pull /system/etc/permissions/com.sonyericsson.suquashi.xml ../../../vendor/htc/$DEVICE/proprietary/com.sonyericsson.suquashi.xml
    adb pull /system/etc/permissions/com.ti.fm.fmreceiverif.xml ../../../vendor/htc/$DEVICE/proprietary/com.ti.fm.fmreceiverif.xml
    adb pull /system/etc/semc/chargemon/anim1.rle ../../../vendor/htc/$DEVICE/proprietary/anim1.rle
    adb pull /system/etc/semc/chargemon/anim2.rle ../../../vendor/htc/$DEVICE/proprietary/anim2.rle
    adb pull /system/etc/semc/chargemon/anim3.rle ../../../vendor/htc/$DEVICE/proprietary/anim3.rle
    adb pull /system/etc/semc/chargemon/anim4.rle ../../../vendor/htc/$DEVICE/proprietary/anim4.rle
    adb pull /system/etc/semc/chargemon/anim5.rle ../../../vendor/htc/$DEVICE/proprietary/anim5.rle
    adb pull /system/etc/semc/chargemon/anim6.rle ../../../vendor/htc/$DEVICE/proprietary/anim6.rle
    adb pull /system/etc/semc/chargemon/anim7.rle ../../../vendor/htc/$DEVICE/proprietary/anim7.rle
    adb pull /system/etc/semc/chargemon/anim8.rle ../../../vendor/htc/$DEVICE/proprietary/anim8.rle
    adb pull /system/etc/sensors.conf ../../../vendor/htc/$DEVICE/proprietary/sensors.conf
    adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libEGL_adreno200.so
    adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
    adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv2_adreno200.so
    adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libq3dtools_adreno200.so
    adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary/libcamera.so
    adb pull /system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary/libgps.so
    adb pull /system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary/libgsl.so
    #adb pull /system/lib/libril-qc-1.so ../../../vendor/htc/$DEVICE/proprietary/libril-qc-1.so
    adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary/liboemcamera.so
    adb pull /system/lib/libfm_stack.so ../../../vendor/htc/$DEVICE/proprietary/libfm_stack.so
    adb pull /system/lib/libfmrx.so ../../../vendor/htc/$DEVICE/proprietary/libfmrx.so
    adb pull /system/lib/liboem_rapi.so ../../../vendor/htc/$DEVICE/proprietary/liboem_rapi.so
    adb pull /system/lib/libZiEngine.so ../../../vendor/htc/$DEVICE/proprietary/libZiEngine.so
    #adb pull /system/lib/libbluedroid.so ../../../vendor/htc/$DEVICE/proprietary/libbluedroid.so
    adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary/libaudioeq.so
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
    adb pull /system/bin/rild ../../../vendor/htc/$DEVICE/proprietary/rild
    adb pull /system/bin/semc_chargalg ../../../vendor/htc/$DEVICE/proprietary/semc_chargalg
    adb pull /system/bin/suntrolkac ../../../vendor/htc/$DEVICE/proprietary/suntrolkac
    adb pull /system/bin/DxDrmServerIpc ../../../vendor/htc/$DEVICE/proprietary/DxDrmServerIpc
    #adb pull /system/drm/DxDrm/DxDrmConfig.txt ../../../vendor/htc/$DEVICE/proprietary/DxDrmConfig.txt
    #adb pull /system/drm/DxDrm/DxDrmConfig_Server.txt ../../../vendor/htc/$DEVICE/proprietary/DxDrmConfig_Server.txt
    #adb pull /system/drm/DxDrm/init_drm.rc ../../../vendor/htc/$DEVICE/proprietary/init_drm.rc
    adb pull /system/etc/AudioFilterPlatform.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilterPlatform.csv
    adb pull /system/etc/AudioFilterProduct.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilterProduct.csv
    adb pull /system/lib/libhardware_legacy.so ../../../vendor/htc/$DEVICE/proprietary/libhardware_legacy.so
    adb pull /system/lib/hw/lights.default.so ../../../vendor/htc/$DEVICE/proprietary/lights.default.so
    adb pull /system/lib/hw/gralloc.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/gralloc.msm7k.so
    adb pull /system/lib/hw/gralloc.default.so ../../../vendor/htc/$DEVICE/proprietary/gralloc.default.so
    adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/copybit.msm7k.so
    adb pull /system/lib/hw/sensors.default.so ../../../vendor/htc/$DEVICE/proprietary/sensors.default.so
    adb pull /system/lib/hw/hal_seport.default.so ../../../vendor/htc/$DEVICE/proprietary/hal_seport.default.so
    adb pull /system/lib/libvdmengine.so ../../../vendor/htc/$DEVICE/proprietary/libvdmengine.so
    adb pull /system/lib/libloc.so ../../../vendor/htc/$DEVICE/proprietary/libloc.so
    adb pull /system/lib/libmmgsdilib.so ../../../vendor/htc/$DEVICE/proprietary/libmmgsdilib.so
    adb pull /system/lib/libqmi.so ../../../vendor/htc/$DEVICE/proprietary/libqmi.so
    #adb pull /system/lib/libril.so ../../../vendor/htc/$DEVICE/proprietary/libril.so
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
    cp -pr $LOCAL_PROPR_DIR/system/etc/tiwlan_firmware.bin ../../../vendor/htc/$DEVICE/proprietary/tiwlan_firmware.bin
    #cp -pr $LOCAL_PROPR_DIR/system/etc/dhcpcd/dhcpcd.conf ../../../vendor/htc/$DEVICE/proprietary/dhcpcd.conf
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/TIInit_7.2.31.bts ../../../vendor/htc/$DEVICE/proprietary/TIInit_7.2.31.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fm_rx_init_1273.1.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fm_rx_init_1273.2.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fm_tx_init_1273.1.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fm_tx_init_1273.2.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/htc/$DEVICE/proprietary/fmc_init_1273.1.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fmc_init_1273.2.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/yamato_pfp.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pfp.fw
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/yamato_pm4.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pm4.fw
    cp -pr $LOCAL_PROPR_DIR/system/etc/permissions/com.dsi.ant.antradio_library.xml ../../../vendor/htc/$DEVICE/proprietary/com.dsi.ant.antradio_library.xml
    cp -pr $LOCAL_PROPR_DIR/system/etc/permissions/com.sonyericsson.smfmf.xml ../../../vendor/htc/$DEVICE/proprietary/com.sonyericsson.smfmf.xml
    cp -pr $LOCAL_PROPR_DIR/system/etc/permissions/com.sonyericsson.suquashi.xml ../../../vendor/htc/$DEVICE/proprietary/com.sonyericsson.suquashi.xml
    cp -pr $LOCAL_PROPR_DIR/system/etc/permissions/com.ti.fm.fmreceiverif.xml ../../../vendor/htc/$DEVICE/proprietary/com.ti.fm.fmreceiverif.xml
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim1.rle ../../../vendor/htc/$DEVICE/proprietary/anim1.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim2.rle ../../../vendor/htc/$DEVICE/proprietary/anim2.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim3.rle ../../../vendor/htc/$DEVICE/proprietary/anim3.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim4.rle ../../../vendor/htc/$DEVICE/proprietary/anim4.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim5.rle ../../../vendor/htc/$DEVICE/proprietary/anim5.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim6.rle ../../../vendor/htc/$DEVICE/proprietary/anim6.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim7.rle ../../../vendor/htc/$DEVICE/proprietary/anim7.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim8.rle ../../../vendor/htc/$DEVICE/proprietary/anim8.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/sensors.conf ../../../vendor/htc/$DEVICE/proprietary/sensors.conf
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libEGL_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv2_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libq3dtools_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libq3dtools_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary/libcamera.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary/libgps.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary/libgsl.so
    #cp -pr $LOCAL_PROPR_DIR/system/lib/libril-qc-1.so ../../../vendor/htc/$DEVICE/proprietary/libril-qc-1.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary/liboemcamera.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfm_stack.so ../../../vendor/htc/$DEVICE/proprietary/libfm_stack.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfmrx.so ../../../vendor/htc/$DEVICE/proprietary/libfmrx.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/liboem_rapi.so ../../../vendor/htc/$DEVICE/proprietary/liboem_rapi.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libZiEngine.so ../../../vendor/htc/$DEVICE/proprietary/libZiEngine.so
    #cp -pr $LOCAL_PROPR_DIR/system/lib/libbluedroid.so ../../../vendor/htc/$DEVICE/proprietary/libbluedroid.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary/libaudioeq.so
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
    cp -pr $LOCAL_PROPR_DIR/system/bin/rild ../../../vendor/htc/$DEVICE/proprietary/rild
    cp -pr $LOCAL_PROPR_DIR/system/bin/semc_chargalg ../../../vendor/htc/$DEVICE/proprietary/semc_chargalg
    cp -pr $LOCAL_PROPR_DIR/system/bin/suntrolkac ../../../vendor/htc/$DEVICE/proprietary/suntrolkac
    cp -pr $LOCAL_PROPR_DIR/system/bin/DxDrmServerIpc ../../../vendor/htc/$DEVICE/proprietary/DxDrmServerIpc
    #cp -pr $LOCAL_PROPR_DIR/system/drm/DxDrm/DxDrmConfig.txt ../../../vendor/htc/$DEVICE/proprietary/DxDrmConfig.txt
    #cp -pr $LOCAL_PROPR_DIR/system/drm/DxDrm/DxDrmConfig_Server.txt ../../../vendor/htc/$DEVICE/proprietary/DxDrmConfig_Server.txt
    #cp -pr $LOCAL_PROPR_DIR/system/drm/DxDrm/init_drm.rc ../../../vendor/htc/$DEVICE/proprietary/init_drm.rc
    cp -pr $LOCAL_PROPR_DIR/system/etc/AudioFilterPlatform.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilterPlatform.csv
    cp -pr $LOCAL_PROPR_DIR/system/etc/AudioFilterProduct.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilterProduct.csv
    cp -pr $LOCAL_PROPR_DIR/system/lib/libhardware_legacy.so ../../../vendor/htc/$DEVICE/proprietary/libhardware_legacy.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/lights.default.so ../../../vendor/htc/$DEVICE/proprietary/lights.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/gralloc.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/gralloc.msm7k.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/gralloc.default.so ../../../vendor/htc/$DEVICE/proprietary/gralloc.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/copybit.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/copybit.msm7k.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/sensors.default.so ../../../vendor/htc/$DEVICE/proprietary/sensors.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/hal_seport.default.so ../../../vendor/htc/$DEVICE/proprietary/hal_seport.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libvdmengine.so ../../../vendor/htc/$DEVICE/proprietary/libvdmengine.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libloc.so ../../../vendor/htc/$DEVICE/proprietary/libloc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmmgsdilib.so ../../../vendor/htc/$DEVICE/proprietary/libmmgsdilib.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libqmi.so ../../../vendor/htc/$DEVICE/proprietary/libqmi.so
    #cp -pr $LOCAL_PROPR_DIR/system/lib/libril.so ../../../vendor/htc/$DEVICE/proprietary/libril.so
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
    vendor/htc/__DEVICE__/proprietary/libgps.so:obj/lib/libgps.so

PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/akmd2:system/bin/akmd2 \\
    vendor/htc/__DEVICE__/proprietary/mm-venc-omx-test:system/bin/mm-venc-omx-test \\
    vendor/htc/__DEVICE__/proprietary/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \\
    vendor/htc/__DEVICE__/proprietary/tiwlan_firmware.bin:system/etc/tiwlan_firmware.bin \\
    vendor/htc/__DEVICE__/proprietary/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts \\
    vendor/htc/__DEVICE__/proprietary/fm_rx_init_1273.1.bts:system/etc/firmware/fm_rx_init_1273.1.bts \\
    vendor/htc/__DEVICE__/proprietary/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \\
    vendor/htc/__DEVICE__/proprietary/fm_tx_init_1273.1.bts:system/etc/firmware/fm_tx_init_1273.1.bts \\
    vendor/htc/__DEVICE__/proprietary/fm_tx_init_1273.2.bts:system/etc/firmware/fm_tx_init_1273.2.bts \\
    vendor/htc/__DEVICE__/proprietary/fmc_init_1273.1.bts:system/etc/firmware/fmc_init_1273.1.bts \\
    vendor/htc/__DEVICE__/proprietary/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \\
    vendor/htc/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/htc/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/htc/__DEVICE__/proprietary/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \\
    vendor/htc/__DEVICE__/proprietary/com.sonyericsson.smfmf.xml:system/etc/permissions/com.sonyericsson.smfmf.xml \\
    vendor/htc/__DEVICE__/proprietary/com.sonyericsson.suquashi.xml:system/etc/permissions/com.sonyericsson.suquashi.xml \\
    vendor/htc/__DEVICE__/proprietary/com.ti.fm.fmreceiverif.xml:system/etc/permissions/com.ti.fm.fmreceiverif.xml \\
    vendor/htc/__DEVICE__/proprietary/anim1.rle:system/etc/semc/chargemon/anim1.rle \\
    vendor/htc/__DEVICE__/proprietary/anim2.rle:system/etc/semc/chargemon/anim2.rle \\
    vendor/htc/__DEVICE__/proprietary/anim3.rle:system/etc/semc/chargemon/anim3.rle \\
    vendor/htc/__DEVICE__/proprietary/anim4.rle:system/etc/semc/chargemon/anim4.rle \\
    vendor/htc/__DEVICE__/proprietary/anim5.rle:system/etc/semc/chargemon/anim5.rle \\
    vendor/htc/__DEVICE__/proprietary/anim6.rle:system/etc/semc/chargemon/anim6.rle \\
    vendor/htc/__DEVICE__/proprietary/anim7.rle:system/etc/semc/chargemon/anim7.rle \\
    vendor/htc/__DEVICE__/proprietary/anim8.rle:system/etc/semc/chargemon/anim8.rle \\
    vendor/htc/__DEVICE__/proprietary/sensors.conf:system/etc/sensors.conf \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:system/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libfm_stack.so:system/lib/libfm_stack.so \\
    vendor/htc/__DEVICE__/proprietary/libfmrx.so:system/lib/libfmrx.so \\
    vendor/htc/__DEVICE__/proprietary/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/htc/__DEVICE__/proprietary/libZiEngine.so:system/lib/libZiEngine.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/htc/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so


#    vendor/htc/__DEVICE__/proprietary/libbluedroid.so:system/lib/libbluedroid.so \\

# Ril files
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/rild:system/bin/rild \\
    device/htc/__DEVICE__/prebuilt/libril-qc-1.so:system/lib/libril-qc-1.so
#    vendor/htc/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
#    vendor/htc/__DEVICE__/proprietary/libril.so:system/lib/libril.so \\

# Kernel modules
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \\
    vendor/htc/__DEVICE__/proprietary/sdio.ko:system/lib/modules/sdio.ko \\
    device/htc/__DEVICE__/prebuilt/jbd.ko:system/lib/modules/jbd.ko \\
    device/htc/__DEVICE__/prebuilt/ext3.ko:system/lib/modules/ext3.ko \\
    device/htc/__DEVICE__/prebuilt/jbd2.ko:system/lib/modules/jbd2.ko \\
    device/htc/__DEVICE__/prebuilt/ext4.ko:system/lib/modules/ext4.ko \\
    device/htc/__DEVICE__/prebuilt/dm-crypt.ko:system/lib/modules/dm-crypt.ko \\
    device/htc/__DEVICE__/prebuilt/dm-mod.ko:system/lib/modules/dm-mod.ko \\
    device/htc/__DEVICE__/prebuilt/tun.ko:system/lib/modules/tun.ko \\
    device/htc/__DEVICE__/prebuilt/twofish.ko:system/lib/modules/twofish.ko \\
    device/htc/__DEVICE__/prebuilt/twofish_common.ko:system/lib/modules/twofish_common.ko \\
    device/htc/__DEVICE__/prebuilt/x8gesture.ko:system/lib/modules/x8gesture.ko \\
    device/htc/__DEVICE__/prebuilt/x8oc.ko:system/lib/modules/x8oc.ko \\
    device/htc/__DEVICE__/prebuilt/x8mddi.ko:system/lib/modules/x8mddi.ko

PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/kexec-tool:system/bin/kexec-tool \\
    vendor/htc/__DEVICE__/proprietary/nvimport:system/bin/nvimport \\
    vendor/htc/__DEVICE__/proprietary/semc_chargalg:system/bin/semc_chargalg \\
    vendor/htc/__DEVICE__/proprietary/suntrolkac:system/bin/suntrolkac \\
    vendor/htc/__DEVICE__/proprietary/AudioFilterPlatform.csv:system/etc/AudioFilterPlatform.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioFilterProduct.csv:system/etc/AudioFilterProduct.csv \\
    vendor/htc/__DEVICE__/proprietary/libhardware_legacy.so:system/lib/libhardware_legacy.so

# DRM
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/drmdbbackup:system/bin/drmdbbackup \\
    vendor/htc/__DEVICE__/proprietary/DxDrmServerIpc:system/bin/DxDrmServerIpc
#    vendor/htc/__DEVICE__/proprietary/DxDrmConfig.txt:system/drm/DxDrm/DxDrmConfig.txt \\
#    vendor/htc/__DEVICE__/proprietary/DxDrmConfig_Server.txt:system/drm/DxDrm/DxDrmConfig_Server.txt \\
#    vendor/htc/__DEVICE__/proprietary/init_drm.rc:system/drm/DxDrm/init_drm.rc \\

# Wpa-supplicant
PRODUCT_COPY_FILES += \\
    device/htc/__DEVICE__/prebuilt/wpa_supplicant:system/bin/wpa_supplicant \\
    device/htc/__DEVICE__/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Extra libs to pull from device
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/lights.default.so:system/lib/hw/lights.default.so \\
    vendor/htc/__DEVICE__/proprietary/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \\
    vendor/htc/__DEVICE__/proprietary/gralloc.default.so:system/lib/hw/gralloc.default.so \\
    vendor/htc/__DEVICE__/proprietary/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \\
    vendor/htc/__DEVICE__/proprietary/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/htc/__DEVICE__/proprietary/hal_seport.default.so:system/lib/hw/hal_seport.default.so \\
    vendor/htc/__DEVICE__/proprietary/libvdmengine.so:system/lib/libvdmengine.so \\
    vendor/htc/__DEVICE__/proprietary/libloc.so:system/lib/libloc.so \\
    vendor/htc/__DEVICE__/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/htc/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/htc/__DEVICE__/proprietary/libloc-rpc.so:system/lib/libloc-rpc.so \\
    vendor/htc/__DEVICE__/proprietary/libuinputdevicejni.so:system/lib/libsystemconnector/libuinputdevicejni.so \\
    vendor/htc/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/htc/__DEVICE__/proprietary/libfuse.so:system/lib/libfuse.so \\
    vendor/htc/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/htc/__DEVICE__/proprietary/libqueue.so:system/lib/libqueue.so \\
    vendor/htc/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/htc/__DEVICE__/proprietary/libmiscta.so:system/lib/libmiscta.so \\
    vendor/htc/__DEVICE__/proprietary/libfacedetect.so:system/lib/libfacedetect.so \\
    vendor/htc/__DEVICE__/proprietary/libsystemconnector_hal_jni.so:system/lib/libsystemconnector_hal_jni.so \\
    vendor/htc/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/htc/__DEVICE__/proprietary/libauth.so:system/lib/libauth.so \\
    vendor/htc/__DEVICE__/proprietary/libskiagl.so:system/lib/libskiagl.so \\
    vendor/htc/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/htc/__DEVICE__/proprietary/libwpa_client.so:system/lib/libwpa_client.so \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:system/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libreference-ril.so:system/lib/libreference-ril.so \\
    vendor/htc/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/htc/__DEVICE__/proprietary/libdiag.so:system/lib/libdiag.so \\
    vendor/htc/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/htc/__DEVICE__/proprietary/libnv.so:system/lib/libnv.so \\
    vendor/htc/__DEVICE__/proprietary/libvdmfumo.so:system/lib/libvdmfumo.so \\
    vendor/htc/__DEVICE__/proprietary/libZiEngine.so:system/lib/libZiEngine.so \\
    vendor/htc/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/htc/__DEVICE__/proprietary/libfacedetectjnitest.so:system/lib/libfacedetectjnitest.so \\
    vendor/htc/__DEVICE__/proprietary/libcommondefs.so:system/lib/libcommondefs.so \\
    vendor/htc/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so \\
    vendor/htc/__DEVICE__/proprietary/libdll.so:system/lib/libdll.so \\
    vendor/htc/__DEVICE__/proprietary/libdsm.so:system/lib/libdsm.so \\
    vendor/htc/__DEVICE__/proprietary/libdss.so:system/lib/libdss.so

# Extra prebuilt binaries
PRODUCT_COPY_FILES += \\
    device/htc/__DEVICE__/prebuilt/busybox:system/bin/busybox \\
    device/htc/__DEVICE__/prebuilt/hw_config.sh:system/etc/hw_config.sh \\
    device/htc/__DEVICE__/prebuilt/FmRxService.apk:system/app/FmRxService.apk \\
    device/htc/__DEVICE__/prebuilt/Radio.apk:system/app/Radio.apk \\
    device/htc/__DEVICE__/prebuilt/SuquashiInputMethod.apk:system/app/SuquashiInputMethod.apk \\
    device/htc/__DEVICE__/prebuilt/SystemConnector.apk:system/app/SystemConnector.apk \\
    device/htc/__DEVICE__/prebuilt/atfwd-daemon:system/bin/atfwd-daemon \\
    device/htc/__DEVICE__/prebuilt/chargemon:system/bin/chargemon \\
    device/htc/__DEVICE__/prebuilt/charger:system/bin/charger \\
    device/htc/__DEVICE__/prebuilt/hciattach:system/bin/hciattach \\
    device/htc/__DEVICE__/prebuilt/netcfg:system/bin/netcfg \\
    device/htc/__DEVICE__/prebuilt/property.tar:system/bin/property.tar \\
    device/htc/__DEVICE__/prebuilt/qmuxd:system/bin/qmuxd \\
    device/htc/__DEVICE__/prebuilt/ramdisk.tar:system/bin/ramdisk.tar \\
    device/htc/__DEVICE__/prebuilt/tiwlan_loader:system/bin/tiwlan_loader \\
    device/htc/__DEVICE__/prebuilt/verify_odex:system/bin/verify_odex \\
    device/htc/__DEVICE__/prebuilt/xrecovery.tar:system/bin/xrecovery.tar \\
    device/htc/__DEVICE__/prebuilt/hw_config.sh:system/etc/hw_config.sh \\
    device/htc/__DEVICE__/prebuilt/com.dsi.ant.antradio_library.jar:system/framework/com.dsi.ant.antradio_library.jar \\
    device/htc/__DEVICE__/prebuilt/com.sonyericsson.suquashi.jar:system/framework/com.sonyericsson.suquashi.jar \\
    device/htc/__DEVICE__/prebuilt/fmreceiverif.jar:system/framework/fmreceiverif.jar \\
    device/htc/__DEVICE__/prebuilt/SemcSmfmf.jar:system/framework/SemcSmfmf.jar \\
    device/htc/__DEVICE__/prebuilt/dhcpcd.conf:system/etc/dhcpcd.conf \\
    device/htc/__DEVICE__/prebuilt/vold.fstab:system/etc/vold.fstab

# Keyboard layouts and T9
PRODUCT_COPY_FILES += \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Basque/Zi8DatEUs.z8d:system/usr/zi/Basque/Zi8DatEUs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Danish/Zi8DatDAs.z8d:system/usr/zi/Danish/Zi8DatDAs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Estonian/Zi8DatETs.z8d:system/usr/zi/Estonian/Zi8DatETs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/German/Zi8DatDEs.z8d:system/usr/zi/German/Zi8DatDEs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Czech/Zi8DatCSs.z8d:system/usr/zi/Czech/Zi8DatCSs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Dutch/Zi8DatNLs.z8d:system/usr/zi/Dutch/Zi8DatNLs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Greek/Zi8DatELs.z8d:system/usr/zi/Greek/Zi8DatELs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Malay/Zi8DatMSs.z8d:system/usr/zi/Malay/Zi8DatMSs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Catalan/Zi8DatCAs.z8d:system/usr/zi/Catalan/Zi8DatCAs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Romanian/Zi8DatROs.z8d:system/usr/zi/Romanian/Zi8DatROs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Polish/Zi8DatPLs.z8d:system/usr/zi/Polish/Zi8DatPLs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/French_CA/Zi8DatFRCAs.z8d:system/usr/zi/French_CA/Zi8DatFRCAs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/French_EU/Zi8DatFREUs.z8d:system/usr/zi/French_EU/Zi8DatFREUs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Slovak/Zi8DatSKs.z8d:system/usr/zi/Slovak/Zi8DatSKs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Lithuanian/Zi8DatLTs.z8d:system/usr/zi/Lithuanian/Zi8DatLTs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Italian/Zi8DatITs.z8d:system/usr/zi/Italian/Zi8DatITs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Ukrainian/Zi8DatUKs.z8d:system/usr/zi/Ukrainian/Zi8DatUKs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Hungarian/Zi8DatHUs.z8d:system/usr/zi/Hungarian/Zi8DatHUs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Spanish_EU/Zi8DatESEUs.z8d:system/usr/zi/Spanish_EU/Zi8DatESEUs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Spanish_SA/Zi8DatESSAs.z8d:system/usr/zi/Spanish_SA/Zi8DatESSAs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Galician/Zi8DatGLs.z8d:system/usr/zi/Galician/Zi8DatGLs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Latvian/Zi8DatLVs.z8d:system/usr/zi/Latvian/Zi8DatLVs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Serbian/Zi8DatSRLAs.z8d:system/usr/zi/Serbian/Zi8DatSRLAs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Slovenian/Zi8DatSLs.z8d:system/usr/zi/Slovenian/Zi8DatSLs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Croatian/Zi8DatHRs.z8d:system/usr/zi/Croatian/Zi8DatHRs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Indonesian/Zi8DatINs.z8d:system/usr/zi/Indonesian/Zi8DatINs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Russian/Zi8DatRU.z8d:system/usr/zi/Russian/Zi8DatRU.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Tagalog/Zi8DatTLs.z8d:system/usr/zi/Tagalog/Zi8DatTLs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Bulgarian/Zi8DatBGs.z8d:system/usr/zi/Bulgarian/Zi8DatBGs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Finnish/Zi8DatFIs.z8d:system/usr/zi/Finnish/Zi8DatFIs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Swedish/Zi8DatSVs.z8d:system/usr/zi/Swedish/Zi8DatSVs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Norwegian/Zi8DatNOs.z8d:system/usr/zi/Norwegian/Zi8DatNOs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/English_AM/Zi8DatENAMs.z8d:system/usr/zi/English_AM/Zi8DatENAMs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/English_UK/Zi8DatENUKs.z8d:system/usr/zi/English_UK/Zi8DatENUKs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Turkish/Zi8DatTRs.z8d:system/usr/zi/Turkish/Zi8DatTRs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d:system/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d:system/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d \\
    device/htc/__DEVICE__/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \\
    device/htc/__DEVICE__/prebuilt/usr/keylayout/robyn_keypad.kl:system/usr/keylayout/robyn_keypad.kl \\
    device/htc/__DEVICE__/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \\
    device/htc/__DEVICE__/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \\
    device/htc/__DEVICE__/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/kaz.xml:system/usr/keyboard-config/languages/kaz.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/deu.xml:system/usr/keyboard-config/languages/deu.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/fra_ca.xml:system/usr/keyboard-config/languages/fra_ca.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/por_br.xml:system/usr/keyboard-config/languages/por_br.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/lav.xml:system/usr/keyboard-config/languages/lav.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/ron.xml:system/usr/keyboard-config/languages/ron.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/lit.xml:system/usr/keyboard-config/languages/lit.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/ell.xml:system/usr/keyboard-config/languages/ell.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/eng.xml:system/usr/keyboard-config/languages/eng.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/rus.xml:system/usr/keyboard-config/languages/rus.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/eng_us.xml:system/usr/keyboard-config/languages/eng_us.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/slk.xml:system/usr/keyboard-config/languages/slk.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/numberDecimal.xml:system/usr/keyboard-config/languages/numberDecimal.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/slv.xml:system/usr/keyboard-config/languages/slv.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/spa.xml:system/usr/keyboard-config/languages/spa.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/spa_la.xml:system/usr/keyboard-config/languages/spa_la.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/est.xml:system/usr/keyboard-config/languages/est.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/sqi.xml:system/usr/keyboard-config/languages/sqi.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/fin.xml:system/usr/keyboard-config/languages/fin.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/tgl.xml:system/usr/keyboard-config/languages/tgl.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/srp.xml:system/usr/keyboard-config/languages/srp.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/eus.xml:system/usr/keyboard-config/languages/eus.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/sun.xml:system/usr/keyboard-config/languages/sun.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/numberNatural.xml:system/usr/keyboard-config/languages/numberNatural.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/swe.xml:system/usr/keyboard-config/languages/swe.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/fra.xml:system/usr/keyboard-config/languages/fra.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/msa.xml:system/usr/keyboard-config/languages/msa.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/glg.xml:system/usr/keyboard-config/languages/glg.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/nld.xml:system/usr/keyboard-config/languages/nld.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/tur.xml:system/usr/keyboard-config/languages/tur.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/ukr.xml:system/usr/keyboard-config/languages/ukr.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/nor.xml:system/usr/keyboard-config/languages/nor.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/phone.xml:system/usr/keyboard-config/languages/phone.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/numberInteger.xml:system/usr/keyboard-config/languages/numberInteger.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/hrv.xml:system/usr/keyboard-config/languages/hrv.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/hun.xml:system/usr/keyboard-config/languages/hun.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/cat.xml:system/usr/keyboard-config/languages/cat.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/jav.xml:system/usr/keyboard-config/languages/jav.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/ind.xml:system/usr/keyboard-config/languages/ind.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/bos.xml:system/usr/keyboard-config/languages/bos.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/ces.xml:system/usr/keyboard-config/languages/ces.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/pol.xml:system/usr/keyboard-config/languages/pol.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/por.xml:system/usr/keyboard-config/languages/por.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/ita.xml:system/usr/keyboard-config/languages/ita.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/isl.xml:system/usr/keyboard-config/languages/isl.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/bul.xml:system/usr/keyboard-config/languages/bul.xml \\
    device/htc/__DEVICE__/prebuilt/usr/keyboard-config/languages/dan.xml:system/usr/keyboard-config/languages/dan.xml

EOF

./setup-makefiles.sh

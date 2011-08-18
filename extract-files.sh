#!/bin/sh

VENDOR=semc
DEVICE=robyn
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary
if [ $# -ne 1 ]
then
    echo "Pulling from device..."
    adb pull /system/bin/akmd2 ../../../vendor/$VENDOR/$DEVICE/proprietary/akmd2
    chmod 755 ../../../vendor/$VENDOR/$DEVICE/proprietary/akmd2
    adb pull /system/bin/mm-venc-omx-test ../../../vendor/$VENDOR/$DEVICE/proprietary/mm-venc-omx-test
    chmod 755 ../../../vendor/$VENDOR/$DEVICE/proprietary/mm-venc-omx-test
    adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/01_qcomm_omx.cfg
    adb pull /system/etc/tiwlan_firmware.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/tiwlan_firmware.bin
    adb pull /system/etc/firmware/TIInit_7.2.31.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/TIInit_7.2.31.bts
    adb pull /system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fm_rx_init_1273.1.bts
    adb pull /system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fm_rx_init_1273.2.bts
    adb pull /system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fm_tx_init_1273.1.bts
    adb pull /system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fm_tx_init_1273.2.bts
    adb pull /system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fmc_init_1273.1.bts
    adb pull /system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fmc_init_1273.2.bts
    adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/yamato_pfp.fw
    adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/yamato_pm4.fw
    adb pull /system/etc/permissions/com.dsi.ant.antradio_library.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.dsi.ant.antradio_library.xml
    adb pull /system/etc/permissions/com.sonyericsson.smfmf.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.sonyericsson.smfmf.xml
    adb pull /system/etc/permissions/com.sonyericsson.suquashi.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.sonyericsson.suquashi.xml
    adb pull /system/etc/permissions/com.ti.fm.fmreceiverif.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.ti.fm.fmreceiverif.xml
    adb pull /system/etc/semc/chargemon/anim1.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim1.rle
    adb pull /system/etc/semc/chargemon/anim2.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim2.rle
    adb pull /system/etc/semc/chargemon/anim3.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim3.rle
    adb pull /system/etc/semc/chargemon/anim4.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim4.rle
    adb pull /system/etc/semc/chargemon/anim5.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim5.rle
    adb pull /system/etc/semc/chargemon/anim6.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim6.rle
    adb pull /system/etc/semc/chargemon/anim7.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim7.rle
    adb pull /system/etc/semc/chargemon/anim8.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim8.rle
    adb pull /system/etc/sensors.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/sensors.conf
    adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libEGL_adreno200.so
    adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
    adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libGLESv2_adreno200.so
    adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libq3dtools_adreno200.so
    adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libcamera.so
    adb pull /system/lib/libgps.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgps.so
    adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgsl.so
    #adb pull /system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libril-qc-1.so
    adb pull /system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/liboemcamera.so
    adb pull /system/lib/libfm_stack.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfm_stack.so
    adb pull /system/lib/libfmrx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfmrx.so
    adb pull /system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/liboem_rapi.so
    adb pull /system/lib/libZiEngine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libZiEngine.so
    #adb pull /system/lib/libbluedroid.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libbluedroid.so
    adb pull /system/lib/libaudioeq.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libaudioeq.so
    #adb pull /system/etc/AudioFilter.csv ../../../vendor/$VENDOR/$DEVICE/proprietary/AudioFilter.csv
    adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmm-adspsvc.so
    adb pull /system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/liboemcamera.so
    adb pull /system/lib/libOmxCore.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxCore.so
    adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxH264Dec.so
    adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxMpeg4Dec.so
    adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxVidEnc.so
    adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxWmaDec.so
    adb pull /system/lib/modules/tiwlan_drv.ko ../../../vendor/$VENDOR/$DEVICE/proprietary/tiwlan_drv.ko
    adb pull /system/lib/modules/sdio.ko ../../../vendor/$VENDOR/$DEVICE/proprietary/sdio.ko
    adb pull /system/bin/rild ../../../vendor/$VENDOR/$DEVICE/proprietary/rild
    adb pull /system/bin/semc_chargalg ../../../vendor/$VENDOR/$DEVICE/proprietary/semc_chargalg
    adb pull /system/etc/AudioFilterPlatform.csv ../../../vendor/$VENDOR/$DEVICE/proprietary/AudioFilterPlatform.csv
    adb pull /system/etc/AudioFilterProduct.csv ../../../vendor/$VENDOR/$DEVICE/proprietary/AudioFilterProduct.csv
    adb pull /system/lib/libhardware_legacy.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libhardware_legacy.so
    adb pull /system/lib/hw/lights.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lights.default.so
    adb pull /system/lib/hw/gralloc.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/gralloc.msm7k.so
    adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/gralloc.default.so
    adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/copybit.msm7k.so
    adb pull /system/lib/hw/sensors.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/sensors.default.so
    adb pull /system/lib/hw/hal_seport.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/hal_seport.default.so
    adb pull /system/lib/libvdmengine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libvdmengine.so
    adb pull /system/lib/libloc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libloc.so
    adb pull /system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmmgsdilib.so
    adb pull /system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libqmi.so
    #adb pull /system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libril.so
    adb pull /system/lib/libloc-rpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libloc-rpc.so
    adb pull /system/lib/libsystemconnector/libuinputdevicejni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libuinputdevicejni.so
    adb pull /system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libwms.so
    adb pull /system/lib/libfuse.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfuse.so
    adb pull /system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libpbmlib.so
    adb pull /system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libqueue.so
    adb pull /system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/liboncrpc.so
    adb pull /system/lib/libmiscta.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmiscta.so
    adb pull /system/lib/libfacedetect.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfacedetect.so
    adb pull /system/lib/libsystemconnector_hal_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libsystemconnector_hal_jni.so
    adb pull /system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgsdi_exp.so
    adb pull /system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libauth.so
    adb pull /system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmmjpeg.so
    adb pull /system/lib/libwpa_client.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libwpa_client.so
    adb pull /system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libaudio.so
    adb pull /system/lib/libreference-ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libreference-ril.so
    adb pull /system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmmipl.so
    adb pull /system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libdiag.so
    adb pull /system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libcm.so
    adb pull /system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libnv.so
    adb pull /system/lib/libvdmfumo.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libvdmfumo.so
    adb pull /system/lib/libZiEngine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libZiEngine.so
    adb pull /system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgstk_exp.so
    adb pull /system/lib/libfacedetectjnitest.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfacedetectjnitest.so
    adb pull /system/lib/libcommondefs.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libcommondefs.so
    adb pull /system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libwmsts.so
    adb pull /system/lib/libdll.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libdll.so
    adb pull /system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libdsm.so
    adb pull /system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libdss.so
else
    LOCAL_PROPR_DIR=$1
    echo "Copying from $LOCAL_PROPR_DIR ..."
    cp -pr $LOCAL_PROPR_DIR/system/bin/akmd2 ../../../vendor/$VENDOR/$DEVICE/proprietary/akmd2
    chmod 755 ../../../vendor/$VENDOR/$DEVICE/proprietary/akmd2
    cp -pr $LOCAL_PROPR_DIR/system/bin/mm-venc-omx-test ../../../vendor/$VENDOR/$DEVICE/proprietary/mm-venc-omx-test
    chmod 755 ../../../vendor/$VENDOR/$DEVICE/proprietary/mm-venc-omx-test
    cp -pr $LOCAL_PROPR_DIR/system/etc/01_qcomm_omx.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/01_qcomm_omx.cfg
    cp -pr $LOCAL_PROPR_DIR/system/etc/tiwlan_firmware.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/tiwlan_firmware.bin
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/TIInit_7.2.31.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/TIInit_7.2.31.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fm_rx_init_1273.1.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fm_rx_init_1273.2.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fm_tx_init_1273.1.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fm_tx_init_1273.2.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fmc_init_1273.1.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary/fmc_init_1273.2.bts
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/yamato_pfp.fw
    cp -pr $LOCAL_PROPR_DIR/system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/yamato_pm4.fw
    cp -pr $LOCAL_PROPR_DIR/system/etc/permissions/com.dsi.ant.antradio_library.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.dsi.ant.antradio_library.xml
    cp -pr $LOCAL_PROPR_DIR/system/etc/permissions/com.sonyericsson.smfmf.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.sonyericsson.smfmf.xml
    cp -pr $LOCAL_PROPR_DIR/system/etc/permissions/com.sonyericsson.suquashi.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.sonyericsson.suquashi.xml
    cp -pr $LOCAL_PROPR_DIR/system/etc/permissions/com.ti.fm.fmreceiverif.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.ti.fm.fmreceiverif.xml
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim1.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim1.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim2.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim2.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim3.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim3.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim4.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim4.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim5.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim5.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim6.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim6.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim7.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim7.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/semc/chargemon/anim8.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim8.rle
    cp -pr $LOCAL_PROPR_DIR/system/etc/sensors.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/sensors.conf
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libEGL_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libGLESv2_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libq3dtools_adreno200.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libcamera.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgps.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgps.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgsl.so
    #cp -pr $LOCAL_PROPR_DIR/system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libril-qc-1.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/liboemcamera.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfm_stack.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfm_stack.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfmrx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfmrx.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/liboem_rapi.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libZiEngine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libZiEngine.so
    #cp -pr $LOCAL_PROPR_DIR/system/lib/libbluedroid.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libbluedroid.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libaudioeq.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libaudioeq.so
    #cp -pr $LOCAL_PROPR_DIR/system/etc/AudioFilter.csv ../../../vendor/$VENDOR/$DEVICE/proprietary/AudioFilter.csv
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmm-adspsvc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmm-adspsvc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/liboemcamera.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxCore.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxCore.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxH264Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxH264Dec.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxMpeg4Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxMpeg4Dec.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxVidEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxVidEnc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libOmxWmaDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libOmxWmaDec.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/modules/tiwlan_drv.ko ../../../vendor/$VENDOR/$DEVICE/proprietary/tiwlan_drv.ko
    cp -pr $LOCAL_PROPR_DIR/system/lib/modules/sdio.ko ../../../vendor/$VENDOR/$DEVICE/proprietary/sdio.ko
    cp -pr $LOCAL_PROPR_DIR/system/bin/rild ../../../vendor/$VENDOR/$DEVICE/proprietary/rild
    cp -pr $LOCAL_PROPR_DIR/system/bin/semc_chargalg ../../../vendor/$VENDOR/$DEVICE/proprietary/semc_chargalg
    cp -pr $LOCAL_PROPR_DIR/system/etc/AudioFilterPlatform.csv ../../../vendor/$VENDOR/$DEVICE/proprietary/AudioFilterPlatform.csv
    cp -pr $LOCAL_PROPR_DIR/system/etc/AudioFilterProduct.csv ../../../vendor/$VENDOR/$DEVICE/proprietary/AudioFilterProduct.csv
    cp -pr $LOCAL_PROPR_DIR/system/lib/libhardware_legacy.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libhardware_legacy.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/lights.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lights.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/gralloc.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/gralloc.msm7k.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/gralloc.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/gralloc.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/copybit.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/copybit.msm7k.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/sensors.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/sensors.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/hw/hal_seport.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/hal_seport.default.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libvdmengine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libvdmengine.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libloc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libloc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmmgsdilib.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libqmi.so
    #cp -pr $LOCAL_PROPR_DIR/system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libril.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libloc-rpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libloc-rpc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libsystemconnector/libuinputdevicejni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libuinputdevicejni.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libwms.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfuse.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfuse.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libpbmlib.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libqueue.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/liboncrpc.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmiscta.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmiscta.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfacedetect.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfacedetect.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libsystemconnector_hal_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libsystemconnector_hal_jni.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgsdi_exp.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libauth.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmmjpeg.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libwpa_client.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libwpa_client.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libaudio.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libreference-ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libreference-ril.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmmipl.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libdiag.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libcm.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libnv.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libvdmfumo.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libvdmfumo.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libZiEngine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libZiEngine.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgstk_exp.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libfacedetectjnitest.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfacedetectjnitest.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libcommondefs.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libcommondefs.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libwmsts.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libdll.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libdll.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libdsm.so
    cp -pr $LOCAL_PROPR_DIR/system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libdss.so
fi

(cat << EOF) | sed -e s/__DEVICE__/$DEVICE/g -e s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/device_$DEVICE-vendor-blobs.mk
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

# This file is generated by device/$VENDOR/__DEVICE__/extract-files.sh

PRODUCT_COPY_FILES := \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libgps.so:obj/lib/libgps.so

PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/akmd2:system/bin/akmd2 \\
    vendor/__VENDOR__/__DEVICE__/proprietary/mm-venc-omx-test:system/bin/mm-venc-omx-test \\
    vendor/__VENDOR__/__DEVICE__/proprietary/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \\
    vendor/__VENDOR__/__DEVICE__/proprietary/tiwlan_firmware.bin:system/etc/tiwlan_firmware.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fm_rx_init_1273.1.bts:system/etc/firmware/fm_rx_init_1273.1.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fm_tx_init_1273.1.bts:system/etc/firmware/fm_tx_init_1273.1.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fm_tx_init_1273.2.bts:system/etc/firmware/fm_tx_init_1273.2.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fmc_init_1273.1.bts:system/etc/firmware/fmc_init_1273.1.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.sonyericsson.smfmf.xml:system/etc/permissions/com.sonyericsson.smfmf.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.sonyericsson.suquashi.xml:system/etc/permissions/com.sonyericsson.suquashi.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.ti.fm.fmreceiverif.xml:system/etc/permissions/com.ti.fm.fmreceiverif.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim1.rle:system/etc/semc/chargemon/anim1.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim2.rle:system/etc/semc/chargemon/anim2.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim3.rle:system/etc/semc/chargemon/anim3.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim4.rle:system/etc/semc/chargemon/anim4.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim5.rle:system/etc/semc/chargemon/anim5.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim6.rle:system/etc/semc/chargemon/anim6.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim7.rle:system/etc/semc/chargemon/anim7.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim8.rle:system/etc/semc/chargemon/anim8.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/sensors.conf:system/etc/sensors.conf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libgps.so:system/lib/libgps.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libfm_stack.so:system/lib/libfm_stack.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libfmrx.so:system/lib/libfmrx.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libZiEngine.so:system/lib/libZiEngine.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so


# Removed binaries and libraries
#PRODUCT_COPY_FILES += \\
#    device/__VENDOR__/__DEVICE__/prebuilt/netcfg:system/bin/netcfg \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/libbluedroid.so:system/lib/libbluedroid.so

# Ril files
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/rild:system/bin/rild \\
    device/__VENDOR__/__DEVICE__/prebuilt/libril-qc-1.so:system/lib/libril-qc-1.so
#    vendor/__VENDOR__/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/libril.so:system/lib/libril.so \\

# Kernel modules
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \\
    vendor/__VENDOR__/__DEVICE__/proprietary/sdio.ko:system/lib/modules/sdio.ko \\
    device/__VENDOR__/__DEVICE__/modules/jbd.ko:system/lib/modules/jbd.ko \\
    device/__VENDOR__/__DEVICE__/modules/ext3.ko:system/lib/modules/ext3.ko \\
    device/__VENDOR__/__DEVICE__/modules/jbd2.ko:system/lib/modules/jbd2.ko \\
    device/__VENDOR__/__DEVICE__/modules/ext4.ko:system/lib/modules/ext4.ko \\
    device/__VENDOR__/__DEVICE__/modules/dm-crypt.ko:system/lib/modules/dm-crypt.ko \\
    device/__VENDOR__/__DEVICE__/modules/dm-mod.ko:system/lib/modules/dm-mod.ko \\
    device/__VENDOR__/__DEVICE__/modules/tun.ko:system/lib/modules/tun.ko \\
    device/__VENDOR__/__DEVICE__/modules/twofish.ko:system/lib/modules/twofish.ko \\
    device/__VENDOR__/__DEVICE__/modules/twofish_common.ko:system/lib/modules/twofish_common.ko \\
    device/__VENDOR__/__DEVICE__/modules/x8gesture.ko:system/lib/modules/x8gesture.ko \\
    device/__VENDOR__/__DEVICE__/modules/x10minioc.ko:system/lib/modules/x10minioc.ko \\
    device/__VENDOR__/__DEVICE__/modules/x10miniuv.ko:system/lib/modules/x10miniuv.ko \\
    device/__VENDOR__/__DEVICE__/modules/ax8_smartass.ko:system/lib/modules/ax8_smartass.ko \\
    device/__VENDOR__/__DEVICE__/modules/x8mddi.ko:system/lib/modules/x8mddi.ko

PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/semc_chargalg:system/bin/semc_chargalg \\
    vendor/__VENDOR__/__DEVICE__/proprietary/AudioFilterPlatform.csv:system/etc/AudioFilterPlatform.csv \\
    vendor/__VENDOR__/__DEVICE__/proprietary/AudioFilterProduct.csv:system/etc/AudioFilterProduct.csv \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libhardware_legacy.so:system/lib/libhardware_legacy.so

# Wpa-supplicant
PRODUCT_COPY_FILES += \\
    device/__VENDOR__/__DEVICE__/prebuilt/wpa_supplicant:system/bin/wpa_supplicant \\
    device/__VENDOR__/__DEVICE__/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Extra libs to pull from device
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lights.default.so:system/lib/hw/lights.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/gralloc.default.so:system/lib/hw/gralloc.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/hal_seport.default.so:system/lib/hw/hal_seport.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libvdmengine.so:system/lib/libvdmengine.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libloc.so:system/lib/libloc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libloc-rpc.so:system/lib/libloc-rpc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libuinputdevicejni.so:system/lib/libsystemconnector/libuinputdevicejni.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libfuse.so:system/lib/libfuse.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libqueue.so:system/lib/libqueue.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmiscta.so:system/lib/libmiscta.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libfacedetect.so:system/lib/libfacedetect.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libsystemconnector_hal_jni.so:system/lib/libsystemconnector_hal_jni.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libauth.so:system/lib/libauth.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libwpa_client.so:system/lib/libwpa_client.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libaudio.so:system/lib/libaudio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libreference-ril.so:system/lib/libreference-ril.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libdiag.so:system/lib/libdiag.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnv.so:system/lib/libnv.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libvdmfumo.so:system/lib/libvdmfumo.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libZiEngine.so:system/lib/libZiEngine.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libfacedetectjnitest.so:system/lib/libfacedetectjnitest.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libcommondefs.so:system/lib/libcommondefs.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libdll.so:system/lib/libdll.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libdsm.so:system/lib/libdsm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libdss.so:system/lib/libdss.so

# Extra prebuilt binaries
PRODUCT_COPY_FILES += \\
    device/__VENDOR__/__DEVICE__/prebuilt/hw_config.sh:system/etc/hw_config.sh \\
    device/__VENDOR__/__DEVICE__/prebuilt/FmRxService.apk:system/app/FmRxService.apk \\
    device/__VENDOR__/__DEVICE__/prebuilt/Radio.apk:system/app/Radio.apk \\
    device/__VENDOR__/__DEVICE__/prebuilt/SuquashiInputMethod.apk:system/app/SuquashiInputMethod.apk \\
    device/__VENDOR__/__DEVICE__/prebuilt/SystemConnector.apk:system/app/SystemConnector.apk \\
    device/__VENDOR__/__DEVICE__/prebuilt/chargemon:system/bin/chargemon \\
    device/__VENDOR__/__DEVICE__/prebuilt/charger:system/bin/charger \\
    device/__VENDOR__/__DEVICE__/prebuilt/hciattach:system/bin/hciattach \\
    device/__VENDOR__/__DEVICE__/prebuilt/property.tar:system/bin/property.tar \\
    device/__VENDOR__/__DEVICE__/prebuilt/qmuxd:system/bin/qmuxd \\
    device/__VENDOR__/__DEVICE__/prebuilt/ramdisk.tar:system/bin/ramdisk.tar \\
    device/__VENDOR__/__DEVICE__/prebuilt/tiwlan_loader:system/bin/tiwlan_loader \\
    device/__VENDOR__/__DEVICE__/prebuilt/xrecovery.tar:system/bin/xrecovery.tar \\
    device/__VENDOR__/__DEVICE__/prebuilt/recovery.tar:system/bin/recovery.tar \\
    device/__VENDOR__/__DEVICE__/prebuilt/hw_config.sh:system/etc/hw_config.sh \\
    device/__VENDOR__/__DEVICE__/prebuilt/com.dsi.ant.antradio_library.jar:system/framework/com.dsi.ant.antradio_library.jar \\
    device/__VENDOR__/__DEVICE__/prebuilt/com.sonyericsson.suquashi.jar:system/framework/com.sonyericsson.suquashi.jar \\
    device/__VENDOR__/__DEVICE__/prebuilt/fmreceiverif.jar:system/framework/fmreceiverif.jar \\
    device/__VENDOR__/__DEVICE__/prebuilt/SemcSmfmf.jar:system/framework/SemcSmfmf.jar \\
    device/__VENDOR__/__DEVICE__/prebuilt/dhcpcd.conf:system/etc/dhcpcd.conf \\
    device/__VENDOR__/__DEVICE__/prebuilt/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \\
    device/__VENDOR__/__DEVICE__/prebuilt/vold.fstab:system/etc/vold.fstab

# Keyboard layouts and T9
PRODUCT_COPY_FILES += \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Basque/Zi8DatEUs.z8d:system/usr/zi/Basque/Zi8DatEUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Danish/Zi8DatDAs.z8d:system/usr/zi/Danish/Zi8DatDAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Estonian/Zi8DatETs.z8d:system/usr/zi/Estonian/Zi8DatETs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/German/Zi8DatDEs.z8d:system/usr/zi/German/Zi8DatDEs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Czech/Zi8DatCSs.z8d:system/usr/zi/Czech/Zi8DatCSs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Dutch/Zi8DatNLs.z8d:system/usr/zi/Dutch/Zi8DatNLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Greek/Zi8DatELs.z8d:system/usr/zi/Greek/Zi8DatELs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Malay/Zi8DatMSs.z8d:system/usr/zi/Malay/Zi8DatMSs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Catalan/Zi8DatCAs.z8d:system/usr/zi/Catalan/Zi8DatCAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Romanian/Zi8DatROs.z8d:system/usr/zi/Romanian/Zi8DatROs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Polish/Zi8DatPLs.z8d:system/usr/zi/Polish/Zi8DatPLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/French_CA/Zi8DatFRCAs.z8d:system/usr/zi/French_CA/Zi8DatFRCAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/French_EU/Zi8DatFREUs.z8d:system/usr/zi/French_EU/Zi8DatFREUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Slovak/Zi8DatSKs.z8d:system/usr/zi/Slovak/Zi8DatSKs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Lithuanian/Zi8DatLTs.z8d:system/usr/zi/Lithuanian/Zi8DatLTs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Italian/Zi8DatITs.z8d:system/usr/zi/Italian/Zi8DatITs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Ukrainian/Zi8DatUKs.z8d:system/usr/zi/Ukrainian/Zi8DatUKs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Hungarian/Zi8DatHUs.z8d:system/usr/zi/Hungarian/Zi8DatHUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Spanish_EU/Zi8DatESEUs.z8d:system/usr/zi/Spanish_EU/Zi8DatESEUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Spanish_SA/Zi8DatESSAs.z8d:system/usr/zi/Spanish_SA/Zi8DatESSAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Galician/Zi8DatGLs.z8d:system/usr/zi/Galician/Zi8DatGLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Latvian/Zi8DatLVs.z8d:system/usr/zi/Latvian/Zi8DatLVs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Serbian/Zi8DatSRLAs.z8d:system/usr/zi/Serbian/Zi8DatSRLAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Slovenian/Zi8DatSLs.z8d:system/usr/zi/Slovenian/Zi8DatSLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Croatian/Zi8DatHRs.z8d:system/usr/zi/Croatian/Zi8DatHRs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Indonesian/Zi8DatINs.z8d:system/usr/zi/Indonesian/Zi8DatINs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Russian/Zi8DatRU.z8d:system/usr/zi/Russian/Zi8DatRU.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Tagalog/Zi8DatTLs.z8d:system/usr/zi/Tagalog/Zi8DatTLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Bulgarian/Zi8DatBGs.z8d:system/usr/zi/Bulgarian/Zi8DatBGs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Finnish/Zi8DatFIs.z8d:system/usr/zi/Finnish/Zi8DatFIs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Swedish/Zi8DatSVs.z8d:system/usr/zi/Swedish/Zi8DatSVs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Norwegian/Zi8DatNOs.z8d:system/usr/zi/Norwegian/Zi8DatNOs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/English_AM/Zi8DatENAMs.z8d:system/usr/zi/English_AM/Zi8DatENAMs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/English_UK/Zi8DatENUKs.z8d:system/usr/zi/English_UK/Zi8DatENUKs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Turkish/Zi8DatTRs.z8d:system/usr/zi/Turkish/Zi8DatTRs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d:system/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d:system/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/robyn_keypad.kl:system/usr/keylayout/robyn_keypad.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/kaz.xml:system/usr/keyboard-config/languages/kaz.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/deu.xml:system/usr/keyboard-config/languages/deu.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/fra_ca.xml:system/usr/keyboard-config/languages/fra_ca.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/por_br.xml:system/usr/keyboard-config/languages/por_br.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/lav.xml:system/usr/keyboard-config/languages/lav.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ron.xml:system/usr/keyboard-config/languages/ron.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/lit.xml:system/usr/keyboard-config/languages/lit.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ell.xml:system/usr/keyboard-config/languages/ell.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/eng.xml:system/usr/keyboard-config/languages/eng.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/rus.xml:system/usr/keyboard-config/languages/rus.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/eng_us.xml:system/usr/keyboard-config/languages/eng_us.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/slk.xml:system/usr/keyboard-config/languages/slk.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/numberDecimal.xml:system/usr/keyboard-config/languages/numberDecimal.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/slv.xml:system/usr/keyboard-config/languages/slv.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/spa.xml:system/usr/keyboard-config/languages/spa.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/spa_la.xml:system/usr/keyboard-config/languages/spa_la.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/est.xml:system/usr/keyboard-config/languages/est.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/sqi.xml:system/usr/keyboard-config/languages/sqi.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/fin.xml:system/usr/keyboard-config/languages/fin.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/tgl.xml:system/usr/keyboard-config/languages/tgl.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/srp.xml:system/usr/keyboard-config/languages/srp.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/eus.xml:system/usr/keyboard-config/languages/eus.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/sun.xml:system/usr/keyboard-config/languages/sun.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/numberNatural.xml:system/usr/keyboard-config/languages/numberNatural.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/swe.xml:system/usr/keyboard-config/languages/swe.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/fra.xml:system/usr/keyboard-config/languages/fra.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/msa.xml:system/usr/keyboard-config/languages/msa.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/glg.xml:system/usr/keyboard-config/languages/glg.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/nld.xml:system/usr/keyboard-config/languages/nld.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/tur.xml:system/usr/keyboard-config/languages/tur.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ukr.xml:system/usr/keyboard-config/languages/ukr.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/nor.xml:system/usr/keyboard-config/languages/nor.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/phone.xml:system/usr/keyboard-config/languages/phone.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/numberInteger.xml:system/usr/keyboard-config/languages/numberInteger.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/hrv.xml:system/usr/keyboard-config/languages/hrv.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/hun.xml:system/usr/keyboard-config/languages/hun.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/cat.xml:system/usr/keyboard-config/languages/cat.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/jav.xml:system/usr/keyboard-config/languages/jav.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ind.xml:system/usr/keyboard-config/languages/ind.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/bos.xml:system/usr/keyboard-config/languages/bos.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ces.xml:system/usr/keyboard-config/languages/ces.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/pol.xml:system/usr/keyboard-config/languages/pol.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/por.xml:system/usr/keyboard-config/languages/por.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ita.xml:system/usr/keyboard-config/languages/ita.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/isl.xml:system/usr/keyboard-config/languages/isl.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/bul.xml:system/usr/keyboard-config/languages/bul.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/dan.xml:system/usr/keyboard-config/languages/dan.xml

# sh compatible with chargemon
PRODUCT_COPY_FILES += \\
    device/__VENDOR__/__DEVICE__/prebuilt/sh:system/xbin/sh

# Extra Cyanogen vendor files
PRODUCT_COPY_FILES += \\
    vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

EOF

./setup-makefiles.sh

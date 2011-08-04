LOCAL_MODULE_TAGS := optional

LOCAL_PATH := $(my-dir)
subdir_makefiles := \
	$(LOCAL_PATH)/libril/Android.mk \
	$(LOCAL_PATH)/libcamera/Android.mk \
	$(LOCAL_PATH)/mount_system/Android.mk
	
include $(subdir_makefiles)

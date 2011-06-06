# Copyright (C) 2007 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)


file := $(TARGET_OUT_KEYLAYOUT)/x10mini-keypad.kl
ALL_PREBUILT += $(file)
LOCAL_MODULE_TAGS := optional
$(file) : $(LOCAL_PATH)/x10mini-keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

#file := $(TARGET_ROOT_OUT)/init.x10mini.rc
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/init.x10mini.rc | $(ACP)
#	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := x10mini-keypad.kcm
LOCAL_MODULE_TAGS := optional
include $(BUILD_KEY_CHAR_MAP)
        
# Hero generic

file := $(TARGET_OUT_KEYLAYOUT)/h2w_headset.kl
ALL_PREBUILT += $(file)
LOCAL_MODULE_TAGS := optional
$(file) : $(LOCAL_PATH)/h2w_headset.kl | $(ACP)
	$(transform-prebuilt-to-target)

#include $(CLEAR_VARS)
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE := vold.fstab
#LOCAL_SRC_FILES := $(LOCAL_MODULE)
#LOCAL_MODULE_TAGS := optional
#include $(BUILD_PREBUILT)

# the system properties for each device, loaded by init
#file := $(TARGET_OUT)/build.x10mini.prop
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/build.x10mini.prop | $(ACP)
#	$(transform-prebuilt-to-target)

-include vendor/se/x10mini/AndroidBoardVendor.mk

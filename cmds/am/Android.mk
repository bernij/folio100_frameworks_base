# Copyright 2008 The Android Open Source Project
#
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_MODULE := am
include $(BUILD_JAVA_LIBRARY)

include $(CLEAR_VARS)
ALL_PREBUILT += $(TARGET_OUT)/bin/am
$(TARGET_OUT)/bin/am : $(LOCAL_PATH)/am | $(ACP)
	$(transform-prebuilt-to-target)


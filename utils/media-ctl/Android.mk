LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := media-ctl
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := -DNO_LIBV4L2
LOCAL_CFLAGS += -Wno-missing-field-initializers \
				-Wno-unused-parameter \
				-Wno-missing-braces \
				-Wno-shift-overflow \
				-Wno-visibility \
				-Wno-sign-compare
				
LOCAL_MULTILIB := 64

LOCAL_SRC_FILES := libmediactl.c  libv4l2subdev.c  media-ctl.c  options.c
	
include $(BUILD_EXECUTABLE)

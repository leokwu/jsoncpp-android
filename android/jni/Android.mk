#BASE_PATH := $(call my-dir)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

JSONCPP_SRC:= \
	src/lib_json/json_reader.cpp \
	src/lib_json/json_value.cpp \
	src/lib_json/json_writer.cpp

LOCAL_SRC_FILES := $(addprefix ../../, $(JSONCPP_SRC))


LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../../include \
	$(LOCAL_PATH)/../../src/lib_json

LOCAL_EXPORT_C_INCLUDE_DIRS := \
	$(LOCAL_PATH)/../../include

LOCAL_CFLAGS := \
	-DJSON_USE_EXCEPTION=0

LOCAL_MODULE_TAGS := \
	tests

LOCAL_MODULE := \
	libjsoncpp

include $(BUILD_STATIC_LIBRARY)


#include $(CLEAR_VARS)

#JSONCPP_SRC:= \
#	src/lib_json/json_reader.cpp \
#	src/lib_json/json_value.cpp \
#	src/lib_json/json_writer.cpp
#
#LOCAL_SRC_FILES := $(addprefix ../../, $(JSONCPP_SRC))
#
#LOCAL_C_INCLUDES:= \
#	$(LOCAL_PATH)/../../include \
#	$(LOCAL_PATH)/../../src/lib_json
#
#LOCAL_EXPORT_C_INCLUDE_DIRS := \
#	$(LOCAL_PATH)/../../include
#
#LOCAL_CFLAGS := \
#	-DJSON_USE_EXCEPTION=0
#
#LOCAL_MODULE_TAGS := \
#	tests
#
#LOCAL_MODULE := \
#	libjsoncpp
#
#include $(BUILD_SHARED_LIBRARY)

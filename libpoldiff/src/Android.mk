LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
libpoldiff_srcs := \
	poldiff.c \
	attrib_diff.c \
	avrule_diff.c \
	avrule_internal.h \
	bool_diff.c \
	cat_diff.c \
	class_diff.c \
	level_diff.c \
	range_diff.c \
	range_trans_diff.c \
	rbac_diff.c \
	role_diff.c \
	terule_diff.c \
	type_diff.c \
	user_diff.c \
	type_map.c \
	util.c

LOCAL_ARM_MODE := arm
LOCAL_MODULE := libpoldiff
LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_LIBRARIES := libqpol libapol
LOCAL_CFLAGS := -std=gnu99 -fpic -fPIC
LOCAL_SRC_FILES := $(libpoldiff_srcs)
LOCAL_C_INCLUDES := \
	$(common_includes)

include $(BUILD_STATIC_LIBRARY)

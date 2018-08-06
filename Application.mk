APP_STL := c++_static
APP_ABI := armeabi-v7a arm64-v8a
APP_CPPFLAGS += -std=c++14
APP_PLATFORM := android-27
NDK_PROJECT_PATH := $(LOCAL_PATH)
APP_BUILD_SCRIPT := $(NDK_PROJECT_PATH)/Android.mk

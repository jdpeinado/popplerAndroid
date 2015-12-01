MY_LOCAL_PATH := $(call my-dir)

EXTERNAL_PATH := $(MY_LOCAL_PATH)/external

include $(call all-subdir-makefiles)

LOCAL_PATH := $(MY_LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE    := popplerAndroid
LOCAL_SRC_FILES := popplerAndroid.cpp

LOCAL_C_INCLUDES :=         		\
	$(EXTERNAL_PATH)/customize/poppler \
	$(EXTERNAL_PATH)/customize/poppler/poppler \
	$(EXTERNAL_PATH)/poppler	\
	$(EXTERNAL_PATH)/poppler/utils	\
	$(EXTERNAL_PATH)/poppler/goo	\
	$(EXTERNAL_PATH)/poppler/splash	\
	$(EXTERNAL_PATH)/poppler/poppler

LOCAL_CFLAGS += -DPLATFORM_ANDROID
LOCAL_LDLIBS := -llog -lz -lGLESv1_CM

LOCAL_STATIC_LIBRARIES := libpoppler libft2 libtiff libjpeg libpng fontconfig libexpat

include $(BUILD_SHARED_LIBRARY)

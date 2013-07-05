LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

#LOCAL_SRC_FILES += $(call all-c-files-under, $(SRC_DIR))

SRC_DIR := libevent-2.0.21-stable

LOCAL_SRC_FILES += $(SRC_DIR)/strlcpy.c \
$(SRC_DIR)/epoll.c \
$(SRC_DIR)/bufferevent_pair.c \
$(SRC_DIR)/bufferevent_openssl.c \
$(SRC_DIR)/event.c \
$(SRC_DIR)/event_tagging.c \
$(SRC_DIR)/http.c \
$(SRC_DIR)/bufferevent.c \
$(SRC_DIR)/evrpc.c \
$(SRC_DIR)/log.c \
$(SRC_DIR)/buffer.c \
$(SRC_DIR)/listener.c \
$(SRC_DIR)/bufferevent_sock.c \
$(SRC_DIR)/evutil.c \
$(SRC_DIR)/evmap.c \
$(SRC_DIR)/evdns.c \
$(SRC_DIR)/bufferevent_ratelim.c \
$(SRC_DIR)/signal.c \
$(SRC_DIR)/evthread.c \
$(SRC_DIR)/poll.c \
$(SRC_DIR)/evutil_rand.c \
$(SRC_DIR)/bufferevent_filter.c \
$(SRC_DIR)/select.c \
$(SRC_DIR)/evthread_pthread.c

LOCAL_CFLAGS += -Dfd_mask=int
LOCAL_CFLAGS += -D__ANDROID__

LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(SRC_DIR)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(SRC_DIR)/include/event2
LOCAL_C_INCLUDES += external/openssl/include

LOCAL_SHARED_LIBRARIES += libssl libcrypto
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libevent2
#LOCAL_ADDITIONAL_DEPENDENCIES := $(local_additional_dependencies)
include $(BUILD_SHARED_LIBRARY)

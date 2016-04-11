LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

srcdir := .

LOCAL_MODULE    := panel

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../ncurses \

LOCAL_CFLAGS := \
	 --param max-inline-insns-single=1200 \
	 -DHAVE_CONFIG_H   \
	 -D_XOPEN_SOURCE=500 -DNDEBUG


LOCAL_SRC_FILES := \
	$(srcdir)/panel.c \
	$(srcdir)/p_above.c \
	$(srcdir)/p_below.c \
	$(srcdir)/p_bottom.c \
	$(srcdir)/p_delete.c \
	$(srcdir)/p_hide.c \
	$(srcdir)/p_hidden.c \
	$(srcdir)/p_move.c \
	$(srcdir)/p_new.c \
	$(srcdir)/p_replace.c \
	$(srcdir)/p_show.c \
	$(srcdir)/p_top.c \
	$(srcdir)/p_update.c \
	$(srcdir)/p_user.c \
	$(srcdir)/p_win.c

LOCAL_SHARED_LIBRARIES := ncurses

include $(BUILD_SHARED_LIBRARY)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

srcdir := .

LOCAL_MODULE    := menu

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../ncurses \

LOCAL_CFLAGS := \
	 --param max-inline-insns-single=1200 \
	 -DHAVE_CONFIG_H   \
	 -D_XOPEN_SOURCE=500 -DNDEBUG


LOCAL_SRC_FILES := \
	$(srcdir)/m_attribs.c \
	$(srcdir)/m_cursor.c \
	$(srcdir)/m_driver.c \
	$(srcdir)/m_format.c \
	$(srcdir)/m_global.c \
	$(srcdir)/m_hook.c \
	$(srcdir)/m_item_cur.c \
	$(srcdir)/m_item_nam.c \
	$(srcdir)/m_item_new.c \
	$(srcdir)/m_item_opt.c \
	$(srcdir)/m_item_top.c \
	$(srcdir)/m_item_use.c \
	$(srcdir)/m_item_val.c \
	$(srcdir)/m_item_vis.c \
	$(srcdir)/m_items.c \
	$(srcdir)/m_new.c \
	$(srcdir)/m_opts.c \
	$(srcdir)/m_pad.c \
	$(srcdir)/m_pattern.c \
	$(srcdir)/m_post.c \
	$(srcdir)/m_req_name.c \
	$(srcdir)/m_scale.c \
	$(srcdir)/m_spacing.c \
	$(srcdir)/m_sub.c \
	$(srcdir)/m_trace.c \
	$(srcdir)/m_userptr.c \
	$(srcdir)/m_win.c

LOCAL_SHARED_LIBRARIES := ncurses

include $(BUILD_SHARED_LIBRARY)

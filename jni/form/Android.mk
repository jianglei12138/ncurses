LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

srcdir := .

LOCAL_MODULE    := form

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../ncurses \

LOCAL_CFLAGS := \
	 --param max-inline-insns-single=1200 \
	 -DHAVE_CONFIG_H   \
	 -D_XOPEN_SOURCE=500 -DNDEBUG


LOCAL_SRC_FILES := \
	$(srcdir)/f_trace.c \
	$(srcdir)/fld_arg.c \
	$(srcdir)/fld_attr.c \
	$(srcdir)/fld_current.c \
	$(srcdir)/fld_def.c \
	$(srcdir)/fld_dup.c \
	$(srcdir)/fld_ftchoice.c \
	$(srcdir)/fld_ftlink.c \
	$(srcdir)/fld_info.c \
	$(srcdir)/fld_just.c \
	$(srcdir)/fld_link.c \
	$(srcdir)/fld_max.c \
	$(srcdir)/fld_move.c \
	$(srcdir)/fld_newftyp.c \
	$(srcdir)/fld_opts.c \
	$(srcdir)/fld_pad.c \
	$(srcdir)/fld_page.c \
	$(srcdir)/fld_stat.c \
	$(srcdir)/fld_type.c \
	$(srcdir)/fld_user.c \
	$(srcdir)/frm_cursor.c \
	$(srcdir)/frm_data.c \
	$(srcdir)/frm_def.c \
	$(srcdir)/frm_driver.c \
	$(srcdir)/frm_hook.c \
	$(srcdir)/frm_opts.c \
	$(srcdir)/frm_page.c \
	$(srcdir)/frm_post.c \
	$(srcdir)/frm_req_name.c \
	$(srcdir)/frm_scale.c \
	$(srcdir)/frm_sub.c \
	$(srcdir)/frm_user.c \
	$(srcdir)/frm_win.c \
	$(srcdir)/fty_alnum.c \
	$(srcdir)/fty_alpha.c \
	$(srcdir)/fty_enum.c \
	$(srcdir)/fty_generic.c \
	$(srcdir)/fty_int.c \
	$(srcdir)/fty_ipv4.c \
	$(srcdir)/fty_num.c \
	$(srcdir)/fty_regex.c

LOCAL_SHARED_LIBRARIES := ncurses

include $(BUILD_SHARED_LIBRARY)

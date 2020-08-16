LOCAL_PATH:= $(call my-dir)

libselinux_src_files  := $(wildcard $(LOCAL_PATH)/libselinux/src/*.c)

old:= \
  libselinux/src/audit2why.c \
  libselinux/src/avc.c \
  libselinux/src/avc_internal.c \
  libselinux/src/avc_sidtab.c \
  libselinux/src/booleans.c \
  libselinux/src/callbacks.c \
  libselinux/src/canonicalize_context.c \
  libselinux/src/checkAccess.c \
  libselinux/src/check_context.c \
  libselinux/src/checkreqprot.c \
  libselinux/src/compute_av.c \
  libselinux/src/compute_create.c \
  libselinux/src/compute_member.c \
  libselinux/src/compute_relabel.c \
  libselinux/src/compute_user.c \
  libselinux/src/context.c \
  libselinux/src/deny_unknown.c \
  libselinux/src/disable.c \
  libselinux/src/enabled.c \
  libselinux/src/fgetfilecon.c \
  libselinux/src/freecon.c \
  libselinux/src/freeconary.c \
  libselinux/src/fsetfilecon.c \
  libselinux/src/get_context_list.c \
  libselinux/src/get_default_type.c \
  libselinux/src/get_initial_context.c \
  libselinux/src/getenforce.c \
  libselinux/src/getfilecon.c \
  libselinux/src/getpeercon.c \
  libselinux/src/init.c \
  libselinux/src/is_customizable_type.c \
  libselinux/src/label.c \
  libselinux/src/label_backends_android.c \
  libselinux/src/label_db.c \
  libselinux/src/label_file.c \
  libselinux/src/label_media.c \
  libselinux/src/label_support.c \
  libselinux/src/label_x.c \
  libselinux/src/lgetfilecon.c \
  libselinux/src/load_policy.c \
  libselinux/src/lsetfilecon.c \
  libselinux/src/mapping.c \
  libselinux/src/matchmediacon.c \
  libselinux/src/matchpathcon.c \
  libselinux/src/policyvers.c \
  libselinux/src/procattr.c \
  libselinux/src/query_user_context.c \
  libselinux/src/regex.c \
  libselinux/src/selinux_check_securetty_context.c \
  libselinux/src/selinux_config.c \
  libselinux/src/selinux_restorecon.c \
  libselinux/src/sestatus.c \
  libselinux/src/setenforce.c \
  libselinux/src/setexecfilecon.c \
  libselinux/src/setfilecon.c \
  libselinux/src/setrans_client.c \
  libselinux/src/seusers.c \
  libselinux/src/sha1.c \
  libselinux/src/stringrep.c

libselinux_android_srcs := \
  libselinux/src/android/android.c \
  libselinux/src/android/android_host.c \

common_src_files := \
  libsepol/src/assertion.c \
  libsepol/src/avrule_block.c \
  libsepol/src/avtab.c \
  libsepol/src/boolean_record.c \
  libsepol/src/booleans.c \
  libsepol/src/conditional.c \
  libsepol/src/constraint.c \
  libsepol/src/context.c \
  libsepol/src/context_record.c \
  libsepol/src/debug.c \
  libsepol/src/ebitmap.c \
  libsepol/src/expand.c \
  libsepol/src/genbools.c \
  libsepol/src/genusers.c \
  libsepol/src/handle.c \
  libsepol/src/hashtab.c \
  libsepol/src/hierarchy.c \
  libsepol/src/iface_record.c \
  libsepol/src/interfaces.c \
  libsepol/src/link.c \
  libsepol/src/mls.c \
  libsepol/src/module.c \
  libsepol/src/module_to_cil.c \
  libsepol/src/node_record.c \
  libsepol/src/nodes.c \
  libsepol/src/polcaps.c \
  libsepol/src/policydb.c \
  libsepol/src/policydb_convert.c \
  libsepol/src/policydb_public.c \
  libsepol/src/port_record.c \
  libsepol/src/ports.c \
  libsepol/src/roles.c \
  libsepol/src/services.c \
  libsepol/src/sidtab.c \
  libsepol/src/symtab.c \
  libsepol/src/user_record.c \
  libsepol/src/users.c \
  libsepol/src/util.c \
  libsepol/src/write.c

cil_src_files := \
  libsepol/cil/src/cil_binary.c \
  libsepol/cil/src/cil_build_ast.c \
  libsepol/cil/src/cil.c \
  libsepol/cil/src/cil_copy_ast.c \
  libsepol/cil/src/cil_find.c \
  libsepol/cil/src/cil_fqn.c \
  libsepol/cil/src/cil_list.c \
  libsepol/cil/src/cil_log.c \
  libsepol/cil/src/cil_mem.c \
  libsepol/cil/src/cil_parser.c \
  libsepol/cil/src/cil_policy.c \
  libsepol/cil/src/cil_post.c \
  libsepol/cil/src/cil_reset_ast.c \
  libsepol/cil/src/cil_resolve_ast.c \
  libsepol/cil/src/cil_stack.c \
  libsepol/cil/src/cil_strpool.c \
  libsepol/cil/src/cil_symtab.c \
  libsepol/cil/src/cil_tree.c \
  libsepol/cil/src/cil_verify.c

libpcre2_src_files := \
  pcre/dist2/src/pcre2_auto_possess.c \
  pcre/dist2/src/pcre2_compile.c \
  pcre/dist2/src/pcre2_config.c \
  pcre/dist2/src/pcre2_context.c \
  pcre/dist2/src/pcre2_dfa_match.c \
  pcre/dist2/src/pcre2_error.c \
  pcre/dist2/src/pcre2_extuni.c \
  pcre/dist2/src/pcre2_find_bracket.c \
  pcre/dist2/src/pcre2_maketables.c \
  pcre/dist2/src/pcre2_match.c \
  pcre/dist2/src/pcre2_match_data.c \
  pcre/dist2/src/pcre2_jit_compile.c \
  pcre/dist2/src/pcre2_newline.c \
  pcre/dist2/src/pcre2_ord2utf.c \
  pcre/dist2/src/pcre2_pattern_info.c \
  pcre/dist2/src/pcre2_serialize.c \
  pcre/dist2/src/pcre2_string_utils.c \
  pcre/dist2/src/pcre2_study.c \
  pcre/dist2/src/pcre2_substitute.c \
  pcre/dist2/src/pcre2_substring.c \
  pcre/dist2/src/pcre2_tables.c \
  pcre/dist2/src/pcre2_ucd.c \
  pcre/dist2/src/pcre2_valid_utf.c \
  pcre/dist2/src/pcre2_xclass.c \
  pcre/dist2/src/pcre2_chartables.c


common_cflags := \
  -Wall -W -Wundef \
  -Wshadow -Wmissing-noreturn \
  -Wmissing-format-attribute \
  -std=gnu99 -O2 -fpic -fPIC \
  -pipe -fno-strict-aliasing \
  -D_GNU_SOURCE  \
  -D__BIONIC__ -DANDROID \
  -D__ANDROID__ -Wno-implicit-function-declaration \
  -DPCRE2_CODE_UNIT_WIDTH=8 


common_ldlibs := \
  -lc

common_includes := \
  include \
  libsepol/include/ \
  libsepol/src/ \
  libsepol/cil/include/ \
  libsepol/cil/src/ \
  pcre/dist2 \
  pcre/include_internal \
  pcre/include \
  libpcre/dist \
  libselinux/src \
  libselinux/include \
  libselinux/include/selinux \
  /opt/androideabi/include/python2.7 \
  /usr/include/python3.*
  libselinux/src/android \
  /opt/sdk/ndk-bundle/prebuilt/linux-x86_64/include/python2.7

yacc_flags := -x c -std=gnu89

FIND_HOSTOS := $(shell uname -s)
HOST_NAME := $(shell echo $(FIND_HOSTOS) |sed -e s/L/l/ |sed -e s/D/d/ |sed s/W/w/ )

mkdir-android := $(shell mkdir -vp $(addprefix $(LOCAL_PATH)/libselinux/src/, android))
mkdir-include := $(shell mkdir -vp $(addprefix $(LOCAL_PATH)/include/, openssl private packagelistparser))

get-openssl := $(shell wget -qO - "https://android.googlesource.com/platform/external/boringssl/+archive/master/src/include/openssl.tar.gz" -O - | tar -xz -C include/openssl)
get-private := $(shell wget -qO - "https://android.googlesource.com/platform/system/core/+archive/master/libcutils/include/private.tar.gz" -O - | tar -xz -C include/private)
get-log := $(shell wget -qO - "https://android.googlesource.com/platform/system/core/+archive/master/liblog/include.tar.gz" -O - | tar -xz -C include)

ifeq ($(HOST_NAME),darwin)
  cmds := \
    $(shell wget -qO - "https://android.googlesource.com/platform/external/selinux/+/master/libselinux/include/selinux/android.h?format=text" | \
    base64 -D > libselinux/include/selinux/android.h) \
    $(shell wget -qO - "https://android.googlesource.com/platform/external/selinux/+/master/libselinux/src/android/android.c?format=text" | \
    base64 -D >  libselinux/src/android/android.c) \
    $(shell wget -qO - "https://android.googlesource.com/platform/external/selinux/+/master/libselinux/src/android/android_host.c?format=text" | \
    base64 -D >  libselinux/src/android/android_host.c) \
    $(shell wget -qO - "https://android.googlesource.com/platform/system/core/+/master/libpackagelistparser/include/packagelistparser/packagelistparser.h?format=text" | \
    base64 -D >  include/packagelistparser/packagelistparser.h)
else
  cmds := \
    $(shell wget -qO - "https://android.googlesource.com/platform/external/selinux/+/master/libselinux/include/selinux/android.h?format=text" | \
    base64 -d > libselinux/include/selinux/android.h) \
    $(shell wget -qO - "https://android.googlesource.com/platform/external/selinux/+/master/libselinux/src/android/android.c?format=text" | \
    base64 -d >  libselinux/src/android/android.c) \
    $(shell wget -qO - "https://android.googlesource.com/platform/external/selinux/+/master/libselinux/src/android/android_host.c?format=text" | \
    base64 -d >  libselinux/src/android/android_host.c) \
    $(shell wget -qO - "https://android.googlesource.com/platform/system/core/+/master/libpackagelistparser/include/packagelistparser/packagelistparser.h?format=text" | \
    base64 -d >  include/packagelistparser/packagelistparser.h)
endif


libselinux_prepare := $(mkdir-android) $(mkdir-include) $(get-openssl) $(get-private) $(get-log) $(cmds)

checkpolicy_prepare := \
  $(shell flex -o checkpolicy/lex.yy.c -l checkpolicy/policy_scan.l) \
  $(shell yacc -vd checkpolicy/policy_parse.y -o checkpolicy/y.tab.c) \
  $(shell bison -vd checkpolicy/policy_parse.y --defines=checkpolicy/policy_parse.h -o checkpolicy/policy_parse.c)

##
# libpcre2.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libpcre2
LOCAL_CFLAGS += -DHAVE_CONFIG_H -std=gnu89 $(common_cflags)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := $(libpcre2_src_files)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

include $(BUILD_STATIC_LIBRARY)

##
# cil_lexer.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := cil_lexer
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .l
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(yacc_flags) $(common_cflags)
LOCAL_SRC_FILES := libsepol/cil/src/cil_lexer.l

include $(BUILD_STATIC_LIBRARY)

##
# libsepol.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libsepol
LOCAL_MODULE_TAGES := optional
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := $(common_src_files)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

##
# chkcon
#
include $(CLEAR_VARS)

LOCAL_MODULE := chkcon
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := libsepol/utils/chkcon.c
LOCAL_STATIC_LIBRARIES := libsepol
LOCAL_MODULE_CLASS := EXECUTABLES

include $(BUILD_EXECUTABLE)

##
# libselinux.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libselinux
LOCAL_MODULE_TAGS := optional
LOCAL_WHOLE_STATIC_LIBRARIES := libpcre2
LOCAL_CFLAGS := -std=gnu89 -DAUDITD_LOG_TAG=1003 -DUSE_PCRE2 $(common_cflags)
LOCAL_STATIC_LIBRARIES := libpcre2
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := $(libselinux_prepare) $(libselinux_src_files) $(libselinux_android_srcs)

include $(BUILD_STATIC_LIBRARY)

##
# sefcontext_compile
#
include $(CLEAR_VARS)

LOCAL_MODULE := sefcontext_compile
LOCAL_CFLAGS += -Wall -Werror -DUSE_PCRE2 -DNO_PERSISTENTLY_STORED_PATTERNS $(common_cflags)
LOCAL_STATIC_LIBRARIES := libselinux libpcre2 libsepol
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := libselinux/utils/sefcontext_compile.c
LOCAL_MODULE_TAGS := optional
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)

##
# getfilecon
#
include $(CLEAR_VARS)

LOCAL_MODULE := getfilecon
LOCAL_CFLAGS += -Wall -Werror -DUSE_PCRE2 -DNO_PERSISTENTLY_STORED_PATTERNS $(common_cflags)
LOCAL_STATIC_LIBRARIES := libselinux libpcre2 libsepol
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := libselinux/utils/getfilecon.c
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

##
# setfilecon
#
include $(CLEAR_VARS)

LOCAL_MODULE := setfilecon
LOCAL_CFLAGS += -Wall -Werror -DUSE_PCRE2 -DNO_PERSISTENTLY_STORED_PATTERNS $(common_cflags)
LOCAL_STATIC_LIBRARIES := libselinux libpcre2 libsepol
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := libselinux/utils/setfilecon.c
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

##
# matchpathcon
#
include $(CLEAR_VARS)

LOCAL_MODULE := matchpathcon
LOCAL_STATIC_LIBRARIES := libselinux libpcre2 libsepol
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := libselinux/utils/matchpathcon.c
LOCAL_MODULE_TAGS := optional
CFLAGS := -O -Wall -W -Wundef -Wformat-y2k -Wformat-security -Winit-self -Wmissing-include-dirs \
          -Wunused -Wunknown-pragmas -Wstrict-aliasing -Wshadow -Wpointer-arith \
          -Wbad-function-cast -Wcast-align -Wwrite-strings -Waggregate-return \
          -Wstrict-prototypes -Wold-style-definition -Wmissing-prototypes \
          -Wmissing-declarations -Wmissing-noreturn -Wmissing-format-attribute \
          -Wredundant-decls -Wnested-externs -Winline -Winvalid-pch -Wvolatile-register-var \
          -Wdisabled-optimization -Wbuiltin-macro-redefined \
          -Wattributes -Wmultichar \
          -Wdeprecated-declarations -Wdiv-by-zero -Wdouble-promotion -Wendif-labels -Wextra \
          -Wformat-extra-args -Wformat-zero-length -Wformat=2 -Wmultichar \
          -Woverflow -Wpointer-to-int-cast -Wpragmas \
          -Wno-missing-field-initializers -Wno-sign-compare \
          -Wno-format-nonliteral -Wp,-D_FORTIFY_SOURCE=2 \
          -fstack-protector-all --param=ssp-buxzffer-size=4 -fexceptions \
          -fasynchronous-unwind-tables -fdiagnostics-show-option -funit-at-a-time \
          -Werror -Wno-aggregate-return -Wno-redundant-decls

LOCAL_CFLAGS += -Wall -Werror -DUSE_PCRE2 -DNO_PERSISTENTLY_STORED_PATTERNS $(common_cflags) $(CFLAGS)

include $(BUILD_EXECUTABLE)

##
# checkpolicy
#
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
  $(checkpolicy_prepare) \
  checkpolicy/lex.yy.c \
  checkpolicy/y.tab.c \
  checkpolicy/checkpolicy.c \
  checkpolicy/module_compiler.c \
  checkpolicy/parse_util.c \
  checkpolicy/policy_define.c \
  checkpolicy/queue.c 
LOCAL_MODULE := checkpolicy
LOCAL_MODULE_TAGS := optional 
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(yacc_flags) $(common_cflags)
LOCAL_STATIC_LIBRARIES := libsepol
LOCAL_CFLAGS += -std=gnu99 -fpic -fPIC
LOCAL_YACCFLAGS := -v
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)

##
# checkmodule
#
include $(CLEAR_VARS) 
LOCAL_SRC_FILES := \
  $(checkpolicy_prepare) \
  checkpolicy/lex.yy.c \
  checkpolicy/y.tab.c \
  checkpolicy/checkmodule.c \
  checkpolicy/module_compiler.c \
  checkpolicy/parse_util.c \
  checkpolicy/policy_define.c \
  checkpolicy/queue.c 
LOCAL_MODULE := checkmodule
LOCAL_MODULE_TAGS := optional 
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(yacc_flags) $(common_cflags) 
LOCAL_STATIC_LIBRARIES := libsepol
LOCAL_CFLAGS += -std=gnu99 -fpic -fPIC 
LOCAL_YACCFLAGS := -v
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)

##
# dispol
#
include $(CLEAR_VARS)
LOCAL_MODULE := dispol
LOCAL_MODULE_TAGS := optional 
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := checkpolicy/test/dispol.c 
LOCAL_CFLAGS := $(yacc_flags) $(common_cflags)
LOCAL_STATIC_LIBRARIES := libsepol 
LOCAL_CFLAGS += -std=gnu99 -fpic -fPIC
LOCAL_MODULE_TAGS := optional
<<<<<<< HEAD
=======
LOCAL_LDFLAGS := -static

>>>>>>> 3c85237ac9fec3403f5e970c8be284e0002020b8
include $(BUILD_EXECUTABLE)

##6
# dismod
#
include $(CLEAR_VARS)
LOCAL_MODULE := dismod
LOCAL_MODULE_TAGS := optional 
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := checkpolicy/test/dismod.c 
LOCAL_CFLAGS := $(yacc_flags) $(common_cflags)
LOCAL_STATIC_LIBRARIES := libsepol 
LOCAL_CFLAGS += -std=gnu99 -fpic -fPIC
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

##
# matchpathcon
#
include $(CLEAR_VARS)

LOCAL_MODULE := matchpathcon
LOCAL_STATIC_LIBRARIES := libselinux_static libpcre2 libsepol
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := libselinux/utils/matchpathcon.c
LOCAL_MODULE_TAGS := optional
CFLAGS := -O -Wall -W -Wundef -Wformat-y2k -Wformat-security -Winit-self -Wmissing-include-dirs \
          -Wunused -Wunknown-pragmas -Wstrict-aliasing -Wshadow -Wpointer-arith \
          -Wbad-function-cast -Wcast-align -Wwrite-strings -Waggregate-return \
          -Wstrict-prototypes -Wold-style-definition -Wmissing-prototypes \
          -Wmissing-declarations -Wmissing-noreturn -Wmissing-format-attribute \
          -Wredundant-decls -Wnested-externs -Winline -Winvalid-pch -Wvolatile-register-var \
          -Wdisabled-optimization -Wbuiltin-macro-redefined \
          -Wattributes -Wmultichar \
          -Wdeprecated-declarations -Wdiv-by-zero -Wdouble-promotion -Wendif-labels -Wextra \
          -Wformat-extra-args -Wformat-zero-length -Wformat=2 -Wmultichar \
          -Woverflow -Wpointer-to-int-cast -Wpragmas \
          -Wno-missing-field-initializers -Wno-sign-compare \
          -Wno-format-nonliteral -Wp,-D_FORTIFY_SOURCE=2 \
          -fstack-protector-all --param=ssp-buxzffer-size=4 -fexceptions \
          -fasynchronous-unwind-tables -fdiagnostics-show-option -funit-at-a-time \
          -Werror -Wno-aggregate-return -Wno-redundant-decls

LOCAL_CFLAGS += -Wall -Werror -DUSE_PCRE2 -DNO_PERSISTENTLY_STORED_PATTERNS $(common_cflags) $(CFLAGS)

include $(BUILD_EXECUTABLE)

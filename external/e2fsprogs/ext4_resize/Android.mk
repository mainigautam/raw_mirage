LOCAL_PATH := $(call my-dir)

ext4_resize_src_files := \
	main.c
	
ext4_resize_c_includes := external/e2fsprogs/lib

ext4_resize_cflags := -O2 -g -W -Wall \
	-DHAVE_UNISTD_H \
	-DHAVE_ERRNO_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_SYS_TIME_H \
        -DHAVE_SYS_PARAM_H \
	-DHAVE_SYSCONF

ext4_resize_shared_libraries := \
	libext2fs \
	libext2_com_err \
	libext2_e2p \
	libext2_uuid \
	libext2_blkid \
	libutils \
	liblog

	
ext4_resize_system_shared_libraries := libc


include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(ext4_resize_src_files)
LOCAL_C_INCLUDES := $(ext4_resize_c_includes)
LOCAL_CFLAGS := $(ext4_resize_cflags)
LOCAL_SHARED_LIBRARIES := $(ext4_resize_shared_libraries)
LOCAL_SYSTEM_SHARED_LIBRARIES := $(ext4_resize_system_shared_libraries)
LOCAL_MODULE := ext4_resize
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

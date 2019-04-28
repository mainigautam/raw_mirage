#!/bin/bash

DIR=`pwd`
OUT=$DIR/linux_out
CORES=`grep -c processor /proc/cpuinfo`

rm -rf $OUT
mkdir -p $OUT
cp $DIR/kernel/arch/arm64/configs/mirage01a_msm_defconfig $OUT/.config

make -C $DIR/kernel/ \
  ARCH=arm64 \
  CROSS_COMPILE=$DIR/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android- \
  INSTALL_MOD_PATH=modules_install \
  INSTALL_MOD_STRIP=1 \
  DEPMOD=/bin/true \
  O=$OUT -j$CORES mirage01a_msm_defconfig


  make -C $DIR/kernel/ \
  ARCH=arm64 \
  CROSS_COMPILE=$DIR/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android- \
  INSTALL_MOD_PATH=modules_install \
  INSTALL_MOD_STRIP=1 \
  DEPMOD=/bin/true \
  O=$OUT -j$CORES

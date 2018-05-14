#!/bin/bash
NDK=/Users/xiaokai.zhan/soft/android-ndk-r10d
PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.6/prebuilt/darwin-x86_64
PLATFORM=$NDK/platforms/android-9/arch-arm
export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:
echo $PATH
export LDFLAGS="-L$PLATFORM/usr/lib"
export CFLAGS="-L$PLATFORM/usr/lib -I$PLATFORM/usr/include"
echo $LDFLAGS
./configure --host=arm-linux-androideabi \
--with-sysroot=$PLATFORM/ \
--prefix=/Users/xiaokai.zhan/book/workspace/cross_compile_project/ffmpeg_2.8.5_android/external_libs/vo_aac/build/armv5/ \
--enable-armv5e \
--includedir=$PLATFORM/usr/include \
--disable-shared

make clean
make
make install

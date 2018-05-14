#!/bin/bash
NDK_HOME=/Users/apple/soft/android/android-ndk-r9b
PREBUILT=$NDK_HOME/toolchains/x86-4.8/prebuilt/darwin-x86_64
PLATFORM=$NDK_HOME/platforms/android-9/arch-x86
export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:
echo $PATH
./configure \
--prefix='/Users/apple/changba/work/program/android/workspace/songstudiodemo/jni/songstudio/libx264/prebuilt_x86' \
--enable-static \
--enable-pic \
--disable-asm \
--disable-cli \
--sysroot=$PLATFORM \
--host=x86-linux \
--cross-prefix=$PREBUILT/bin/i686-linux-android-
make clean
make 
make install

#!/bin/bash
NDK_HOME=/Users/apple/soft/android/android-ndk-r9b
PREBUILT=$NDK_HOME/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64
SYSROOT=$NDK_HOME/platforms/android-9/arch-arm
./configure \
--prefix='/Users/apple/changba/work/program/android/workspace/test_ffmpeg_compile/jni/songstudio/ffmpeg_2.8.5/external_libs/libx264/build/armv5' \
--enable-static \
--enable-pic \
--disable-asm \
--disable-cli \
--sysroot=$SYSROOT \
--host=arm-linux \
--cross-prefix=$PREBUILT/bin/arm-linux-androideabi-
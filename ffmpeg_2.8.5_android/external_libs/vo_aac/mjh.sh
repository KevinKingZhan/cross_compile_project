#!/bin/bash
PREBUILT=/Users/apple/soft/android/android-ndk-r9b/toolchains/arm-linux-androideabi-4.6/prebuilt/darwin-x86_64
PLATFORM=/Users/apple/soft/android/android-ndk-r9b/platforms/android-8/arch-arm
echo $PREBUILT
export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:
./configure --host=arm-linux-androideabi \
--with-sysroot=$PLATFORM/ \
--prefix=/Users/apple/changba/work/program/android/workspace/songstudiodemo/jni/songstudio/libffmpeg/libvoaacenc/build/ \
--enable-armv5e \
--disable-shared

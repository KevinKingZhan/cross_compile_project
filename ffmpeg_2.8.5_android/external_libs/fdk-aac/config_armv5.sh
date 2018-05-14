#!/bin/bash
PREBUILT=/Users/apple/soft/android/android-ndk-r9b/toolchains/arm-linux-androideabi-4.6/prebuilt/darwin-x86_64
PLATFORM=/Users/apple/soft/android/android-ndk-r9b/platforms/android-9/arch-arm
NDK=/Users/apple/soft/android/android-ndk-r9b
export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:

export LDFLAGS="-L$PLATFORM/usr/lib"
export CFLAGS="-I$PLATFORM/usr/include"

export CPPFLAGS="$CFLAGS"
export CFLAGS="$CFLAGS"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="$LDFLAGS"

export AS=$PREBUILT/bin/arm-linux-androideabi-as
export LD=$PREBUILT/bin/arm-linux-androideabi-ld
export CXX="$PREBUILT/bin/arm-linux-androideabi-g++ --sysroot=${PLATFORM}"
export CC="$PREBUILT/bin/arm-linux-androideabi-gcc --sysroot=${PLATFORM}"
export NM=$PREBUILT/bin/arm-linux-androideabi-nm
export STRIP=$PREBUILT/bin/arm-linux-androideabi-strip
export RANLIB=$PREBUILT/bin/arm-linux-androideabi-ranlib
export AR=$PREBUILT/bin/arm-linux-androideabi-ar

./configure --host=armv5 \
--enable-static \
--disable-shared \
--prefix=/Users/apple/changba/work/program/android/workspace/test_ffmpeg_compile/jni/songstudio/ffmpeg_2.8.5/external_libs/fdk-aac/build/armv5/ 

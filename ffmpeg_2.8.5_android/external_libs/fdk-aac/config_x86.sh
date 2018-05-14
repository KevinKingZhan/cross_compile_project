#!/bin/bash
PREBUILT=/Users/apple/soft/android/android-ndk-r9b/toolchains/x86-4.8/prebuilt/darwin-x86_64
PLATFORM=/Users/apple/soft/android/android-ndk-r9b/platforms/android-9/arch-x86
export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:
echo $PATH
export LDFLAGS="-L$PLATFORM/usr/lib"
export CFLAGS="-L$PLATFORM/usr/lib -I$PLATFORM/usr/include"
echo $LDFLAGS

export AS=$PREBUILT/bin/i686-linux-android-as
export LD=$PREBUILT/bin/i686-linux-android-ld
export CXX="$PREBUILT/bin/i686-linux-android-g++ --sysroot=${PLATFORM}"
export CC="$PREBUILT/bin/i686-linux-android-gcc --sysroot=${PLATFORM}"
export NM=$PREBUILT/bin/i686-linux-android-nm
export STRIP=$PREBUILT/bin/i686-linux-android-strip
export RANLIB=$PREBUILT/bin/i686-linux-android-ranlib
export AR=$PREBUILT/bin/i686-linux-android-ar

./configure --host=x86-linux \
--enable-static \
--disable-shared \
--prefix=/Users/apple/changba/work/program/android/workspace/songstudio_trunk/jni/songstudio/libffmpeg/fdk-aac/build_x86/ 

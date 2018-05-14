#!/bin/bash
PREBUILT=/Users/apple/soft/android/android-ndk-r9b/toolchains/x86-4.8/prebuilt/darwin-x86_64
PLATFORM=/Users/apple/soft/android/android-ndk-r9b/platforms/android-9/arch-x86
export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:
echo $PATH
export LDFLAGS="-L$PLATFORM/usr/lib"
export CFLAGS="-L$PLATFORM/usr/lib -I$PLATFORM/usr/include"
echo $LDFLAGS

export CC=$PREBUILT/bin/i686-linux-android-gcc
export CXX=$PREBUILT/bin/i686-linux-android-g++
export AR=$PREBUILT/bin/i686-linux-android-ar
export AS=$PREBUILT/bin/i686-linux-android-as
export LD=$PREBUILT/bin/i686-linux-android-ld
export RANLIB=$PREBUILT/bin/i686-linux-android-ranlib
export NM=$PREBUILT/bin/i686-linux-android-nm
export STRIP=$PREBUILT/bin/i686-linux-android-strip

./configure --host=x86-linux \
--with-sysroot=$PLATFORM/ \
--prefix=/Users/apple/changba/work/program/android/workspace/songstudiodemo/jni/songstudio/libffmpeg/libvoaacenc/build/x86/ \
--disable-shared
echo "config sucess..."
make clean
make
make install

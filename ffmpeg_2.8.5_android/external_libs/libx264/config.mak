SRCPATH=.
prefix=/Users/xiaokai.zhan/book/workspace/cross_compile_project/ffmpeg_2.8.5_android/external_libs/libx264/build/armv7a/
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
ARCH=ARM
SYS=LINUX
CC=/Users/xiaokai.zhan/soft/android-ndk-r10d/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-gcc --sysroot= -march=armv7-a
CFLAGS=-Wshadow -O3 -fno-fast-math  -Wall -I. -I$(SRCPATH)  --sysroot=/Users/xiaokai.zhan/soft/android-ndk-r10d/platforms/android-9/arch-arm -std=gnu99 -fPIC -fomit-frame-pointer -s -fno-tree-vectorize
DEPMM=-MM -g0
DEPMT=-MT
LD=/Users/xiaokai.zhan/soft/android-ndk-r10d/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-gcc --sysroot= -march=armv7-a -o 
LDFLAGS= --sysroot=/Users/xiaokai.zhan/soft/android-ndk-r10d/platforms/android-9/arch-arm -lm -lc -s -ldl
LIBX264=libx264.a
AR=/Users/xiaokai.zhan/soft/android-ndk-r10d/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-ar rc 
RANLIB=/Users/xiaokai.zhan/soft/android-ndk-r10d/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-ranlib
STRIP=/Users/xiaokai.zhan/soft/android-ndk-r10d/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-strip
INSTALL=install
AS=
ASFLAGS= -DHAVE_ALIGNED_STACK=1 -DPIC -DHIGH_BIT_DEPTH=0 -DBIT_DEPTH=8
RC=
RCFLAGS=
EXE=
HAVE_GETOPT_LONG=1
DEVNULL=/dev/null
PROF_GEN_CC=-fprofile-generate
PROF_GEN_LD=-fprofile-generate
PROF_USE_CC=-fprofile-use
PROF_USE_LD=-fprofile-use
HAVE_OPENCL=yes
default: lib-static
install: install-lib-static
LDFLAGSCLI = -ldl 
CLI_LIBX264 = $(LIBX264)

#!/bin/bash
NDK_HOME=/Users/apple/soft/android/android-ndk-r9b
PROJECT_PATH=/Users/apple/changba/work/program/android/workspace/songstudiodemo/jni/songstudio/libffmpeg
ANDROID_NDK_ROOT=$NDK_HOME
PREBUILT=$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64
PLATFORM=$ANDROID_NDK_ROOT/platforms/android-9/arch-arm
./configure \
--target-os=linux \
--arch=arm \
--enable-gpl \
--disable-shared \
--disable-stripping \
--disable-ffmpeg \
--disable-ffplay \
--disable-ffserver \
--disable-ffprobe \
--disable-avdevice \
--disable-indevs \
--disable-devices \
--disable-parsers \
--disable-debug \
--disable-asm \
--disable-yasm \
--disable-doc \
--disable-bsfs \
--disable-muxers \
--disable-demuxers \
--disable-ffplay \
--disable-ffprobe \
--disable-ffserver \
--disable-indevs \
--disable-outdevs \
--enable-cross-compile \
--cross-prefix=$PREBUILT/bin/arm-linux-androideabi- \
--enable-filter=aresample \
--enable-bsf=aac_adtstoasc \
--enable-bsf=h264_mp4toannexb \
--enable-small \
--enable-dct \
--enable-dwt \
--enable-lsp \
--enable-mdct \
--enable-rdft \
--enable-fft \
--enable-static \
--enable-version3 \
--enable-nonfree \
--disable-encoders \
--enable-encoder=pcm_s16le \
--enable-encoder=aac \
--enable-encoder=libvo_aacenc \
--enable-encoder=libfdk_aac \
--enable-encoder=libx264 \
--enable-encoder=mp2 \
--disable-decoders \
--enable-decoder=aac \
--enable-decoder=mp3 \
--enable-decoder=h264 \
--enable-decoder=pcm_s16le \
--disable-parsers \
--enable-parser=aac  \
--enable-parser=h264  \
--enable-parser=mpeg4video  \
--enable-parser=mpegvideo  \
--enable-parser=mpegaudio  \
--enable-parser=aac  \
--disable-muxers \
--enable-muxer=avi \
--enable-muxer=flv \
--enable-muxer=mp4 \
--enable-muxer=wav \
--enable-muxer=adts \
--disable-demuxers \
--enable-demuxer=mov \
--enable-demuxer=avi \
--enable-demuxer=flv \
--enable-demuxer=h264 \
--enable-demuxer=mp3 \
--enable-demuxer=aac \
--enable-demuxer=wav \
--disable-protocols \
--enable-protocol=rtmp \
--enable-protocol=file \
--enable-protocol=http \
--disable-filters \
--enable-filter=transpose \
--enable-filter=crop \
--enable-filter=vflip \
--enable-filter=hflip \
--enable-libx264 \
--enable-libvo-aacenc \
--enable-libfdk_aac \
--sysroot=$PLATFORM \
--extra-cflags="-marm -march=armv5 -I$PLATFORM/usr/include -Iexternal_libs/vo_aac/build/armv5/include -Iexternal_libs/fdk-aac/build/armv5/include -Iexternal_libs/libx264/build/armv5/include" \
--extra-ldflags="-marm -march=armv5 -Lexternal_libs/vo_aac/build/armv5/lib -Lexternal_libs/fdk-aac/build/armv7a/lib -Lexternal_libs/libx264/build/armv7a/lib" \
--prefix='/Users/apple/changba/work/program/android/workspace/test_ffmpeg_compile/jni/songstudio/ffmpeg_2.8.5/build/armv5'

echo $PROJECT_PATH/build/lib

make clean
make -j8
make install

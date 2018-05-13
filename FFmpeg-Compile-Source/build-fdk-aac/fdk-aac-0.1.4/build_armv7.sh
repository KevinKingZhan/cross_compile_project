./configure \
--enable-static \
--disable-shared \
--host=arm-apple-darwin \
--prefix="/Users/apple/Desktop/iOS_live_publisher/FFmpeg-Compile-Source/build-fdk-aac/fdk-aac-0.1.4/thin/armv7"  
CC="xcrun -sdk iphoneos clang -Wno-error=unused-command-line-argument-hard-error-in-future" \
AS="./extras/gas-preprocessor.pl $CC"
CFLAGS="-arch armv7 -mios-simulator-version-min=7.0" \
LDFLAGS="-arch armv7 -mios-simulator-version-min=7.0" 

make clean
make -j8
make install

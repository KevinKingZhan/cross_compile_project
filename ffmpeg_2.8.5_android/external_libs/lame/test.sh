./configure \
--disable-shared \
--disable-frontend \
--host=arm-apple-darwin \
--prefix="/Users/sam/Downloads/lame-3.99.5/thin-lame/arm64" \
CC="xcrun -sdk iphoneos clang -arch arm64" \
CFLAGS="-arch arm64 -fembed-bitcode" \
LDFLAGS="-arch arm64 -fembed-bitcode"

make clean
make -j8
make install

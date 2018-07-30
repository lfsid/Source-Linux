#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libwebp-0.6.1
tar -xvzf libwebp-0.6.1.tar.gz
cd libwebp-0.6.1

./configure --prefix=/usr           \
            --enable-libwebpmux     \
            --enable-libwebpdemux   \
            --enable-libwebpdecoder \
            --enable-libwebpextras  \
            --enable-swap-16bit-csp \
            --disable-static        &&
make -j$(nproc)

make install

cd $src && rm -rf libwebp-0.6.1

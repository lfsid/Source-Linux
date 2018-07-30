################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf curl-7.59.0
tar -xvf curl-7.59.0.tar.xz
cd curl-7.59.0

./configure --prefix=/usr                           \
            --disable-static                        \
            --enable-threaded-resolver              \
            --with-ca-path=/etc/ssl/certs &&
make -j$(nproc)

make install

cd $src && rm -rf curl-7.59.0

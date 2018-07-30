################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf curl-7.60.0
tar -xvf curl-7.60.0.tar.xz
cd curl-7.60.0

./configure --prefix=/usr                           \
            --disable-static                        \
            --enable-threaded-resolver              \
            --with-ca-path=/etc/ssl/certs &&
make -j$(nproc)

make install &&

rm -rf docs/examples/.deps &&

find docs \( -name Makefile\* -o -name \*.1 -o -name \*.3 \) -exec rm {} \; &&

install -v -d -m755 /usr/share/doc/curl-7.60.0 &&
cp -v -R docs/*     /usr/share/doc/curl-7.60.0

cd $src && rm -rf curl-7.60.0

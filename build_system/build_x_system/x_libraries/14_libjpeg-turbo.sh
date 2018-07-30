#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libjpeg-turbo-1.5.0
tar -xvf libjpeg-turbo-1.5.0.tar.gz
cd libjpeg-turbo-1.5.0

rm -f /usr/lib/libjpeg.so*

./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --with-jpeg8            \
            --disable-static        \
            --docdir=/usr/share/doc/libjpeg-turbo-1.5.0 &&
make -j$(nproc)

make install

cd $src && rm -rf libjpeg-turbo-1.5.0

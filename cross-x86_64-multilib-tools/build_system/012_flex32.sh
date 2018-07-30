################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf flex-2.6.4
tar -xvzf flex-2.6.4.tar.gz
cd flex-2.6.4

CC="gcc ${BUILD32}" ./configure \
    --prefix=/usr \
    --docdir=/usr/share/doc/flex-2.6.4

make -j$(nproc)

make install

cd $src && rm -rf flex-2.6.4

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libogg-1.3.3
tar -xvf libogg-1.3.3.tar.xz
cd libogg-1.3.3

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libogg-1.3.3 &&
make -j$(nproc)

make install

cd $aa

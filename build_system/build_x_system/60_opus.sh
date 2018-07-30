################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf opus-1.2.1
tar -xvf opus-1.2.1.tar.gz
cd opus-1.2.1

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/opus-1.2.1 &&
make -j$(nproc)

make install

cd $aa

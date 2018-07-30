################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf bison-3.0.4
tar -xvf bison-3.0.4.tar.xz
cd bison-3.0.4

CC="gcc ${BUILD32}" CXX="g++ ${BUILD32}" \
./configure \
    --prefix=/usr \
    --docdir=/usr/share/doc/bison-3.0.4

make -j$(nproc)

make install

cd $src && rm -rf bison-3.0.4

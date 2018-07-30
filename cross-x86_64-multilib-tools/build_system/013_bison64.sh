################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf bison-3.0.4
tar -xvf bison-3.0.4.tar.xz
cd bison-3.0.4

CC="gcc ${BUILD64}" \
CXX="g++ ${BUILD64}" \
./configure \
    --prefix=/usr \
    --libdir=/usr/lib64 \
    --docdir=/usr/share/doc/bison-3.0.4

make -j$(nproc)

make install

cd $src && rm -rf bison-3.0.4

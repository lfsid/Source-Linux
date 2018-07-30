#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf binutils-2.31.1
tar -xvf binutils-2.31.1.tar.xz

rm -rf binutils-build
mkdir -v binutils-build && cd binutils-build

../binutils-2.31.1/configure --prefix=/usr       \
                           --enable-gold       \
                           --enable-ld=default \
                           --enable-plugins    \
                           --enable-shared     \
                           --disable-werror    \
                           --with-system-zlib

make -j$(nproc) tooldir=/usr

make tooldir=/usr install

cd $src && rm -rf binutils-2.31.1 binutils-build


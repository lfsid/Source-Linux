#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf binutils-2.28
tar -xvjf binutils-2.28.tar.bz2
rm -rf build-binutils
mkdir build-binutils && cd build-binutils

../binutils-2.28/configure \
    --prefix=/tools \
    --libdir=/tools/lib64 \
    --with-lib-path=/tools/lib64:/tools/lib \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --target=${LFS_TARGET} \
    --disable-nls \
    --enable-shared \
    --enable-64-bit-bfd \
    --disable-multilib \
    --enable-gold=yes \
    --enable-plugins \
    --with-system-zlib \
    --enable-threads

make -j$(nproc)
make install

cd $src && rm -rf binutils-2.28 build-binutils


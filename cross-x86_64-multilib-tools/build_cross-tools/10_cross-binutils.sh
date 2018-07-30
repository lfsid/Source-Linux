#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf binutils-2.28
tar -xvjf binutils-2.28.tar.bz2
rm -rf build-binutils
mkdir build-binutils && cd build-binutils

AR=ar AS=as \
../binutils-2.28/configure \
    --prefix=/cross-tools \
    --host=${LFS_HOST} \
    --target=${LFS_TARGET} \
    --with-sysroot=${LFS} \
    --with-lib-path=/tools/lib:/tools/lib64 \
    --disable-nls \
    --disable-static \
    --enable-64-bit-bfd \
    --enable-gold=yes \
    --enable-plugins \
    --enable-threads \
    --disable-werror


make -j$(nproc)
make install

cd $src && rm -rf binutils-2.28


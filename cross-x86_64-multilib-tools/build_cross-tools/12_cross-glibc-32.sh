#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf glibc-2.25
tar -xvf glibc-2.25.tar.xz
rm -rf build-glibc
mkdir build-glibc && cd build-glibc

BUILD_CC="gcc" CC="${LFS_TARGET}-gcc ${BUILD32}" \
AR="${LFS_TARGET}-ar" RANLIB="${LFS_TARGET}-ranlib" \
../glibc-2.25/configure \
    --prefix=/tools \
    --host=${LFS_TARGET32} \
    --build=${LFS_HOST} \
    --enable-kernel=3.12.0 \
    --with-binutils=/cross-tools/bin \
    --with-headers=/tools/include \
    --enable-obsolete-rpc

make -j$(nproc)
make install

cd $src && rm -rf glibc-2.25 build-glibc


#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf glibc-2.25
tar -xvf glibc-2.25.tar.xz
rm -rf build-glibc
mkdir build-glibc && cd build-glibc

echo "libc_cv_slibdir=/tools/lib64" >> config.cache

BUILD_CC="gcc" CC="${LFS_TARGET}-gcc ${BUILD64}" \
AR="${LFS_TARGET}-ar" RANLIB="${LFS_TARGET}-ranlib" \
../glibc-2.25/configure \
    --prefix=/tools \
    --host=${LFS_TARGET} \
    --build=${LFS_HOST} \
    --libdir=/tools/lib64 \
    --enable-kernel=3.12.0 \
    --with-binutils=/cross-tools/bin \
    --with-headers=/tools/include \
    --enable-obsolete-rpc  \
    --cache-file=config.cache

make -j$(nproc)
make install

cd $src && rm -rf glibc-2.25 build-glibc


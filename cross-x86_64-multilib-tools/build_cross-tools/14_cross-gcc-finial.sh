#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gcc-7.1.0
tar -xvjf gcc-7.1.0.tar.bz2
cd gcc-7.1.0

patch -Np1 -i ../gcc-7.1.0-specs-1.patch

echo -en '\n#undef STANDARD_STARTFILE_PREFIX_1\n#define STANDARD_STARTFILE_PREFIX_1 "/tools/lib/"\n' >> gcc/config/linux.h
echo -en '\n#undef STANDARD_STARTFILE_PREFIX_2\n#define STANDARD_STARTFILE_PREFIX_2 ""\n' >> gcc/config/linux.h

cd ..
rm -rf build-gcc
mkdir build-gcc && cd build-gcc

AR=ar \
LDFLAGS="-Wl,-rpath,/cross-tools/lib" \
../gcc-7.1.0/configure \
    --prefix=/cross-tools \
    --build=${LFS_HOST} \
    --target=${LFS_TARGET} \
    --host=${LFS_HOST} \
    --with-sysroot=${LFS} \
    --with-local-prefix=/tools \
    --with-native-system-header-dir=/tools/include \
    --disable-static \
    --enable-languages=c,c++ \
    --with-mpc=/cross-tools \
    --with-mpfr=/cross-tools \
    --with-gmp=/cross-tools \
    --with-isl=/cross-tools

make -j$(nproc) AS_FOR_TARGET="${LFS_TARGET}-as" \
    LD_FOR_TARGET="${LFS_TARGET}-ld"

make install

cd $src && rm -rf gcc-7.1.0 build-gcc


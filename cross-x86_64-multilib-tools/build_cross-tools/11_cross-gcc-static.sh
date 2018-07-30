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

touch /tools/include/limits.h

cd ..
rm -rf build-gcc
mkdir build-gcc && cd build-gcc

AR=ar \
LDFLAGS="-Wl,-rpath,/cross-tools/lib" \
../gcc-7.1.0/configure \
    --prefix=/cross-tools \
    --build=${LFS_HOST} \
    --host=${LFS_HOST} \
    --target=${LFS_TARGET} \
    --with-sysroot=${LFS} \
    --with-local-prefix=/tools \
    --with-native-system-header-dir=/tools/include \
    --disable-shared \
    --with-mpfr=/cross-tools \
    --with-gmp=/cross-tools \
    --with-mpc=/cross-tools \
    --without-headers \
    --with-newlib \
    --disable-decimal-float \
    --disable-libgomp \
    --disable-libssp \
    --disable-libatomic \
    --disable-libitm \
    --disable-libsanitizer \
    --disable-libquadmath \
    --disable-libvtv \
    --disable-libcilkrts \
    --disable-libstdc++-v3 \
    --disable-threads \
    --with-isl=/cross-tools \
    --enable-languages=c \
    --with-glibc-version=2.25

make -j$(nproc) all-gcc all-target-libgcc
make install-gcc install-target-libgcc

cd $src && rm -rf gcc-7.1.0 build-gcc


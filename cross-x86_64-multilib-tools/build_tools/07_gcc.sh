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

cp -v gcc/Makefile.in{,.orig}
sed 's@\./fixinc\.sh@-c true@' gcc/Makefile.in.orig > gcc/Makefile.in

cd ..
rm -rf build-gcc
mkdir build-gcc && cd build-gcc

../gcc-7.1.0/configure \
    --prefix=/tools \
    --libdir=/tools/lib64 \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --target=${LFS_TARGET} \
    --with-local-prefix=/tools \
    --enable-languages=c,c++ \
    --with-system-zlib \
    --with-native-system-header-dir=/tools/include \
    --disable-libssp \
    --enable-install-libiberty

make -j$(nproc) AS_FOR_TARGET="${AS}" \
                LD_FOR_TARGET="${LD}"
make install

cd $src && rm -rf gcc-8.1.0 build-gcc


################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf binutils-2.28
tar -xvjf binutils-2.28.tar.bz2
mkdir binutils-build && cd binutils-build

CC="gcc -isystem /usr/include ${BUILD64}" \
LDFLAGS="-Wl,-rpath-link,/usr/lib64:/lib64:/usr/lib:/lib ${BUILD64}" \
../binutils-2.28/configure \
    --prefix=/usr \
    --enable-shared \
    --enable-64-bit-bfd \
    --libdir=/usr/lib64 \
    --enable-gold=yes \
    --enable-plugins \
    --with-system-zlib \
    --enable-threads

make -j$(nproc) tooldir=/usr

make tooldir=/usr install

cd $src && rm -rf binutils-2.28

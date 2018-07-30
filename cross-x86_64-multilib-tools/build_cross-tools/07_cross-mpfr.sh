#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf mpfr-3.1.5
tar -xvf mpfr-3.1.5.tar.xz
cd mpfr-3.1.5

patch -Np1 -i ../mpfr-3.1.5-fixes-1.patch

LDFLAGS="-Wl,-rpath,/cross-tools/lib" \
./configure \
    --prefix=/cross-tools \
    --disable-static \
    --with-gmp=/cross-tools

make -j$(nproc)
make install

cd $src && rm -rf mpfr-3.1.5


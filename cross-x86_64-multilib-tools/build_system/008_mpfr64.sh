################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf mpfr-3.1.5
tar -xvf mpfr-3.1.5.tar.xz
cd mpfr-3.1.5

patch -Np1 -i ../mpfr-3.1.5-fixes-1.patch

CC="gcc -isystem /usr/include ${BUILD64}" \
    LDFLAGS="-Wl,-rpath-link,/usr/lib64:/lib64 ${BUILD64}" \
./configure \
    --prefix=/usr \
    --libdir=/usr/lib64 \
    --docdir=/usr/share/doc/mpfr-3.1.5

make -j$(nproc)
make html
make install
make install-html

cd $src && rm -rf mpfr-3.1.5

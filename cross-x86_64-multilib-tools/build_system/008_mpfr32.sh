################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf mpfr-3.1.5
tar -xvf mpfr-3.1.5.tar.xz
cd mpfr-3.1.5

patch -Np1 -i ../mpfr-3.1.5-fixes-1.patch

CC="gcc -isystem /usr/include ${BUILD32}" \
    LDFLAGS="-Wl,-rpath-link,/usr/lib:/lib ${BUILD32}" \
./configure \
    --prefix=/usr \
    --host=${LFS_TARGET32} \
    --docdir=/usr/share/doc/mpfr-3.1.5

make -j$(nproc)
make html
make install
make install-html

cd $src && rm -rf mpfr-3.1.5

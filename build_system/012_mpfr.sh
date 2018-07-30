#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf mpfr-4.0.1
tar -xvf mpfr-4.0.1.tar.xz
cd mpfr-4.0.1

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.0.1

make -j$(nproc)
make html

make install
make install-html

cd $src && rm -rf mpfr-4.0.1


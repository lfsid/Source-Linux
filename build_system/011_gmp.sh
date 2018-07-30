#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf gmp-6.1.2
tar -xvf gmp-6.1.2.tar.xz
cd gmp-6.1.2


./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.1.2

make -j$(nproc)
make html

make install
make install-html

cd $src && rm -rf gmp-6.1.2


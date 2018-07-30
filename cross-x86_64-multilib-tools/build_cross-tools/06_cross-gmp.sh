#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gmp-6.1.2
tar -xvf gmp-6.1.2.tar.xz
cd gmp-6.1.2

./configure \
    --prefix=/cross-tools \
    --enable-cxx \
    --disable-static

make -j$(nproc)
make install

cd $src && rm -rf gmp-6.1.2


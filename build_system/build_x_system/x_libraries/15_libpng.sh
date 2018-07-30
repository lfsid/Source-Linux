#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libpng-1.6.24
tar -xvf libpng-1.6.24.tar.xz
cd libpng-1.6.24

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libpng-1.6.24

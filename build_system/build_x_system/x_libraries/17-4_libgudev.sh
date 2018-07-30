#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libgudev-232
tar -xvf libgudev-232.tar.xz
cd libgudev-232

./configure --prefix=/usr --disable-umockdev &&
make -j$(nproc)

make install

cd $src && rm -rf libgudev-232

#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libsoup-2.60.3
tar -xvf libsoup-2.60.3.tar.xz
cd libsoup-2.60.3

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libsoup-2.60.3

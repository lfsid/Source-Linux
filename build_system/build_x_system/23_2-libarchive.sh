################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libarchive-3.3.2
tar -xvf libarchive-3.3.2.tar.gz
cd libarchive-3.3.2

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libarchive-3.3.2

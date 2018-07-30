#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libxml2-2.9.4
tar -xvf libxml2-2.9.4.tar.gz
cd libxml2-2.9.4

sed -i "/seems to be moved/s/^/#/" ltmain.sh &&
./configure --prefix=/usr --disable-static --with-history &&
make -j$(nproc)

make install

cd $src && rm -rf libxml2-2.9.4

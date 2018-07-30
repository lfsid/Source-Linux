#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libxslt-1.1.29
tar -xvzf libxslt-1.1.29.tar.gz
cd libxslt-1.1.29

sed -i "/seems to be moved/s/^/#/" ltmain.sh &&
./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libxslt-1.1.29

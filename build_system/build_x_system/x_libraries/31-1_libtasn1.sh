#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libtasn1-3.3
tar -xvzf libtasn1-3.3.tar.gz
cd libtasn1-3.3

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libtasn1-3.3

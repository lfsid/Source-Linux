#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf libtool-2.4.6
tar -xvf libtool-2.4.6.tar.xz
cd libtool-2.4.6

./configure --prefix=/usr
make -j$(nproc)
make install

cd $src && rm -rf libtool-2.4.6


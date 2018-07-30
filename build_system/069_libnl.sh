#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf libnl-3.4.0
tar -xvf libnl-3.4.0.tar.gz
cd libnl-3.4.0
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
make -j$(nproc)

make install

cd $src && rm -rf libnl-3.4.0


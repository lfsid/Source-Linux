######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXpm-3.5.12
tar -xvjf libXpm-3.5.12.tar.bz2
cd libXpm-3.5.12

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXi-1.7.9
tar -xvjf libXi-1.7.9.tar.bz2
cd libXi-1.7.9

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





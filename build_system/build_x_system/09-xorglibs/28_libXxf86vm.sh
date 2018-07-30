######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXxf86vm-1.1.4
tar -xvjf libXxf86vm-1.1.4.tar.bz2
cd libXxf86vm-1.1.4

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






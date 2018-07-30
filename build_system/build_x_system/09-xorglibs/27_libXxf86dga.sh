######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXxf86dga-1.1.4
tar -xvjf libXxf86dga-1.1.4.tar.bz2
cd libXxf86dga-1.1.4

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






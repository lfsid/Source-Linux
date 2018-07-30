######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXv-1.0.11
tar -xvjf libXv-1.0.11.tar.bz2
cd libXv-1.0.11

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






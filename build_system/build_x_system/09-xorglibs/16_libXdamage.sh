######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXdamage-1.1.4
tar -xvjf libXdamage-1.1.4.tar.bz2
cd libXdamage-1.1.4

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXft-2.3.2
tar -xvjf libXft-2.3.2.tar.bz2
cd libXft-2.3.2

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





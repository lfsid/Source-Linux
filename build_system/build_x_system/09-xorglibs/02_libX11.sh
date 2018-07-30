######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libX11-1.6.5
tar -xvjf libX11-1.6.5.tar.bz2
cd libX11-1.6.5

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig




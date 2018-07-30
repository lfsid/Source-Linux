######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXtst-1.2.3
tar -xvjf libXtst-1.2.3.tar.bz2
cd libXtst-1.2.3

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






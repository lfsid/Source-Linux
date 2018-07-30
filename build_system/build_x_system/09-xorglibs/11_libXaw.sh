######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXaw-1.0.13
tar -xvjf libXaw-1.0.13.tar.bz2
cd libXaw-1.0.13

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





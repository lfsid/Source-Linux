######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXrender-0.9.10
tar -xvjf libXrender-0.9.10.tar.bz2
cd libXrender-0.9.10

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





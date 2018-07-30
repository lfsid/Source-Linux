######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXfixes-5.0.3
tar -xvjf libXfixes-5.0.3.tar.bz2
cd libXfixes-5.0.3

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





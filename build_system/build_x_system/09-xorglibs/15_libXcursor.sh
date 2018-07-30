######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXcursor-1.1.14
tar -xvjf libXcursor-1.1.14.tar.bz2
cd libXcursor-1.1.14

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





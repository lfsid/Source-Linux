######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXinerama-1.1.3
tar -xvjf libXinerama-1.1.3.tar.bz2
cd libXinerama-1.1.3

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXext-1.3.3
tar -xvjf libXext-1.3.3.tar.bz2
cd libXext-1.3.3

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig




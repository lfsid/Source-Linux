######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXres-1.0.7
tar -xvjf libXres-1.0.7.tar.bz2
cd libXres-1.0.7

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






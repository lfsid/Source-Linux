######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libICE-1.0.9
tar -xvjf libICE-1.0.9.tar.bz2
cd libICE-1.0.9

./configure $XORG_CONFIG ICE_LIBS=-lpthread

make -j$(nproc)
make install
/sbin/ldconfig





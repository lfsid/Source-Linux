######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libSM-1.2.2
tar -xvjf libSM-1.2.2.tar.bz2
cd libSM-1.2.2

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





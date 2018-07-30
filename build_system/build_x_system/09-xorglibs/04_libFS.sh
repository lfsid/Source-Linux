######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libFS-1.0.7
tar -xvjf libFS-1.0.7.tar.bz2
cd libFS-1.0.7

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig




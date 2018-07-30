######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libpciaccess-0.13.5
tar -xvjf libpciaccess-0.13.5.tar.bz2
cd libpciaccess-0.13.5

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






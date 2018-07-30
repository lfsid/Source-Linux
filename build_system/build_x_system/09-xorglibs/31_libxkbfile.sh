######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libxkbfile-1.0.9
tar -xvjf libxkbfile-1.0.9.tar.bz2
cd libxkbfile-1.0.9

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXvMC-1.0.10
tar -xvjf libXvMC-1.0.10.tar.bz2
cd libXvMC-1.0.10

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






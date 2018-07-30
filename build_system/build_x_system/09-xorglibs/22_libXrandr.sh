######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXrandr-1.5.1
tar -xvjf libXrandr-1.5.1.tar.bz2
cd libXrandr-1.5.1

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






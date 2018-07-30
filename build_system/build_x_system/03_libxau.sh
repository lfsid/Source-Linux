################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libXau-1.0.8
tar -xvjf libXau-1.0.8.tar.bz2
cd libXau-1.0.8

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

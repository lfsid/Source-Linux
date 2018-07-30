################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libva-1.8.3
tar -xvjf libva-1.8.3.tar.bz2
cd libva-1.8.3

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

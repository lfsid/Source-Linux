################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libevdev-1.5.7
tar -xvf libevdev-1.5.7.tar.xz
cd libevdev-1.5.7

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

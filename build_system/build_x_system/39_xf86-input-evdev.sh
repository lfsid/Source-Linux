################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-input-evdev-2.10.5
tar -xvjf xf86-input-evdev-2.10.5.tar.bz2
cd xf86-input-evdev-2.10.5

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

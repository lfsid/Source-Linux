################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libinput-1.8.1
tar -xvf libinput-1.8.1.tar.xz
cd libinput-1.8.1

./configure $XORG_CONFIG            \
            --disable-libwacom      \
            --disable-debug-gui     \
            --disable-tests         \
            --disable-documentation \
            --with-udev-dir=/lib/udev &&
make -j$(nproc)

make install

cd $aa

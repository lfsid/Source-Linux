#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf clutter-1.26.2
tar -xvf clutter-1.26.2.tar.xz
cd clutter-1.26.2

./configure --prefix=/usr               \
            --sysconfdir=/etc           \
            --enable-egl-backend        \
            --enable-evdev-input        \
            --enable-wayland-backend    \
            --enable-wayland-compositor &&
make -j$(nproc)

make install

cd $src && rm -rf clutter-1.26.2

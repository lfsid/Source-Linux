################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xorg-server-1.19.3
tar -xvjf xorg-server-1.19.3.tar.bz2
cd xorg-server-1.19.3

./configure $XORG_CONFIG          \
            --enable-glamor       \
            --enable-suid-wrapper \
            --with-xkb-output=/var/lib/xkb &&
make -j$(nproc)

make install &&
mkdir -pv /etc/X11/xorg.conf.d

cd $aa

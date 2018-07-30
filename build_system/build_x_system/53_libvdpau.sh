################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libvdpau-1.1.1
tar -xvjf libvdpau-1.1.1.tar.bz2
cd libvdpau-1.1.1

./configure $XORG_CONFIG \
            --docdir=/usr/share/doc/libvdpau-1.1.1 &&
make -j$(nproc)

make install

cd $aa

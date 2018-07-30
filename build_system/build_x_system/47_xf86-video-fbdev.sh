################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-video-fbdev-0.4.4
tar -xvjf xf86-video-fbdev-0.4.4.tar.bz2
cd xf86-video-fbdev-0.4.4

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

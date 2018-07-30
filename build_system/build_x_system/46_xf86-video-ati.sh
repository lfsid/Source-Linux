################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-video-ati-7.9.0
tar -xvjf xf86-video-ati-7.9.0.tar.bz2
cd xf86-video-ati-7.9.0

./configure $XORG_CONFIG &&
make -j$(nproc)

make install                         &&
install -v -m644 conf/10-radeon.conf \
  $XORG_PREFIX/share/X11/xorg.conf.d

cd $aa

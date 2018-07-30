################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-video-nouveau-1.0.15
tar -xvjf xf86-video-nouveau-1.0.15.tar.bz2
cd xf86-video-nouveau-1.0.15

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

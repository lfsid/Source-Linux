################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-video-vmware-13.2.1
tar -xvjf xf86-video-vmware-13.2.1.tar.bz2
cd xf86-video-vmware-13.2.1

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

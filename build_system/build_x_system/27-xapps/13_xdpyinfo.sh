################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xdpyinfo-1.3.2
tar -xvjf xdpyinfo-1.3.2.tar.bz2
cd xdpyinfo-1.3.2

./configure $XORG_CONFIG

make -j$(nproc)

make install



################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xrandr-1.5.0
tar -xvjf xrandr-1.5.0.tar.bz2
cd xrandr-1.5.0

./configure $XORG_CONFIG

make -j$(nproc)

make install



################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf setxkbmap-1.3.1
tar -xvjf setxkbmap-1.3.1.tar.bz2
cd setxkbmap-1.3.1

./configure $XORG_CONFIG

make -j$(nproc)

make install



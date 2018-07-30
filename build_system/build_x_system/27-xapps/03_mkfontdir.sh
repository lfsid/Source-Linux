################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf mkfontdir-1.0.7
tar -xvjf mkfontdir-1.0.7.tar.bz2
cd mkfontdir-1.0.7

./configure $XORG_CONFIG

make -j$(nproc)

make install



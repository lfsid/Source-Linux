################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf mkfontscale-1.1.2
tar -xvjf mkfontscale-1.1.2.tar.bz2
cd mkfontscale-1.1.2

./configure $XORG_CONFIG

make -j$(nproc)

make install



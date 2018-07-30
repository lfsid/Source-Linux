################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf font-bh-ttf-1.0.3
tar -xvjf font-bh-ttf-1.0.3.tar.bz2
cd font-bh-ttf-1.0.3

./configure $XORG_CONFIG

make -j$(nproc)

make install



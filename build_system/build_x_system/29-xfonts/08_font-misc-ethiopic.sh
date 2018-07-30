################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf font-misc-ethiopic-1.0.3
tar -xvjf font-misc-ethiopic-1.0.3.tar.bz2
cd font-misc-ethiopic-1.0.3

./configure $XORG_CONFIG

make -j$(nproc)

make install



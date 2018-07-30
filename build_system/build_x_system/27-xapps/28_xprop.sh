################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xprop-1.2.2
tar -xvjf xprop-1.2.2.tar.bz2
cd xprop-1.2.2

./configure $XORG_CONFIG

make -j$(nproc)

make install



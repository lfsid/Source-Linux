################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xwininfo-1.1.3
tar -xvjf xwininfo-1.1.3.tar.bz2
cd xwininfo-1.1.3

./configure $XORG_CONFIG

make -j$(nproc)

make install



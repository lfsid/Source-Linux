################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xkbutils-1.0.4
tar -xvjf xkbutils-1.0.4.tar.bz2
cd xkbutils-1.0.4

./configure $XORG_CONFIG

make -j$(nproc)

make install



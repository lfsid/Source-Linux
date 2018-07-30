################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xkill-1.0.4
tar -xvjf xkill-1.0.4.tar.bz2
cd xkill-1.0.4

./configure $XORG_CONFIG

make -j$(nproc)

make install



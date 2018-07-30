################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86vidmodeproto-2.3.1
tar -xvjf xf86vidmodeproto-2.3.1.tar.bz2
cd xf86vidmodeproto-2.3.1

./configure $XORG_CONFIG

make install



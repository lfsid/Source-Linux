################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86dgaproto-2.1
tar -xvjf xf86dgaproto-2.1.tar.bz2
cd xf86dgaproto-2.1

./configure $XORG_CONFIG

make install



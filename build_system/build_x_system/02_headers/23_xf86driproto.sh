################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86driproto-2.1.1
tar -xvjf xf86driproto-2.1.1.tar.bz2
cd xf86driproto-2.1.1

./configure $XORG_CONFIG

make install



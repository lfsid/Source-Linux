################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86bigfontproto-1.2.0
tar -xvjf xf86bigfontproto-1.2.0.tar.bz2
cd xf86bigfontproto-1.2.0

./configure $XORG_CONFIG

make install



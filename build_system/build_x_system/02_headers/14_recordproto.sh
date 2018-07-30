################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf recordproto-1.14.2
tar -xvjf recordproto-1.14.2.tar.bz2
cd recordproto-1.14.2

./configure $XORG_CONFIG

make install


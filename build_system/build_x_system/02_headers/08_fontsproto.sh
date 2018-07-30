################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf fontsproto-2.1.3
tar -xvjf fontsproto-2.1.3.tar.bz2
cd fontsproto-2.1.3

./configure $XORG_CONFIG

make install

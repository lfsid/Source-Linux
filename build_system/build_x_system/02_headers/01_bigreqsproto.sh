################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf bigreqsproto-1.1.2
tar -xvjf bigreqsproto-1.1.2.tar.bz2
cd bigreqsproto-1.1.2

./configure $XORG_CONFIG

make install

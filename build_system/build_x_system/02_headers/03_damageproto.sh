################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf damageproto-1.2.1
tar -xvjf damageproto-1.2.1.tar.bz2
cd damageproto-1.2.1

./configure $XORG_CONFIG

make install

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf glproto-1.4.17
tar -xvjf glproto-1.4.17.tar.bz2
cd glproto-1.4.17

./configure $XORG_CONFIG

make install

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf kbproto-1.0.7
tar -xvjf kbproto-1.0.7.tar.bz2
cd kbproto-1.0.7

./configure $XORG_CONFIG

make install

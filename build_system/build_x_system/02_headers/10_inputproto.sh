################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf inputproto-2.3.2
tar -xvjf inputproto-2.3.2.tar.bz2
cd inputproto-2.3.2

./configure $XORG_CONFIG

make install

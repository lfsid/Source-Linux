################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf randrproto-1.5.0
tar -xvjf randrproto-1.5.0.tar.bz2
cd randrproto-1.5.0

./configure $XORG_CONFIG

make install


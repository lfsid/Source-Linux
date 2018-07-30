################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf resourceproto-1.2.0
tar -xvjf resourceproto-1.2.0.tar.bz2
cd resourceproto-1.2.0

./configure $XORG_CONFIG

make install



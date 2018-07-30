################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xproto-7.0.31
tar -xvjf xproto-7.0.31.tar.bz2
cd xproto-7.0.31

./configure $XORG_CONFIG

make install



################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xextproto-7.3.0
tar -xvjf xextproto-7.3.0.tar.bz2
cd xextproto-7.3.0

./configure $XORG_CONFIG

make install



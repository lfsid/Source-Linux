################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf dri2proto-2.8
tar -xvjf dri2proto-2.8.tar.bz2
cd dri2proto-2.8

./configure $XORG_CONFIG

make install

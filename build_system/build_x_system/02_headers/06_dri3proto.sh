################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf dri3proto-1.0
tar -xvjf dri3proto-1.0.tar.bz2
cd dri3proto-1.0

./configure $XORG_CONFIG

make install

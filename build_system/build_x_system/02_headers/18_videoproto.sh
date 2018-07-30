################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf videoproto-2.3.3
tar -xvjf videoproto-2.3.3.tar.bz2
cd videoproto-2.3.3

./configure $XORG_CONFIG

make install



################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf renderproto-0.11.1
tar -xvjf renderproto-0.11.1.tar.bz2
cd renderproto-0.11.1

./configure $XORG_CONFIG

make install



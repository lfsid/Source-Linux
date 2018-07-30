################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf compositeproto-0.4.2
tar -xvjf compositeproto-0.4.2.tar.bz2
cd compositeproto-0.4.2

./configure $XORG_CONFIG

make install

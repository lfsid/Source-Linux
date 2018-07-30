################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf presentproto-1.1
tar -xvjf presentproto-1.1.tar.bz2
cd presentproto-1.1

./configure $XORG_CONFIG

make install

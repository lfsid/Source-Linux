################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xcmiscproto-1.2.2
tar -xvjf xcmiscproto-1.2.2.tar.bz2
cd xcmiscproto-1.2.2

./configure $XORG_CONFIG

make install



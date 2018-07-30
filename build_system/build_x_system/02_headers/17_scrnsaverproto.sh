################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf scrnsaverproto-1.2.2
tar -xvjf scrnsaverproto-1.2.2.tar.bz2
cd scrnsaverproto-1.2.2

./configure $XORG_CONFIG

make install



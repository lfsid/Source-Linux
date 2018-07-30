################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf dmxproto-2.3.1
tar -xvjf dmxproto-2.3.1.tar.bz2
cd dmxproto-2.3.1

./configure $XORG_CONFIG

make install

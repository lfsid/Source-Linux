################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xineramaproto-1.2.1
tar -xvjf xineramaproto-1.2.1.tar.bz2
cd xineramaproto-1.2.1

./configure $XORG_CONFIG

make install



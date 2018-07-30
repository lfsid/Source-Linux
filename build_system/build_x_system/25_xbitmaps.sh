################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xbitmaps-1.1.1
tar -xvjf xbitmaps-1.1.1.tar.bz2
cd xbitmaps-1.1.1

./configure $XORG_CONFIG

make install

cd $aa

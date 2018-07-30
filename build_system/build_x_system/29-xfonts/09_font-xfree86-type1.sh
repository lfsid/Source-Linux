################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf font-xfree86-type1-1.0.4
tar -xvjf font-xfree86-type1-1.0.4.tar.bz2
cd font-xfree86-type1-1.0.4

./configure $XORG_CONFIG

make -j$(nproc)

make install



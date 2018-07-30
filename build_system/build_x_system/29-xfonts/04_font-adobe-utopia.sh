################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf font-adobe-utopia-type1-1.0.4
tar -xvjf font-adobe-utopia-type1-1.0.4.tar.bz2
cd font-adobe-utopia-type1-1.0.4

./configure $XORG_CONFIG

make -j$(nproc)

make install



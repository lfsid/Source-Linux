################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf font-alias-1.0.3
tar -xvjf font-alias-1.0.3.tar.bz2
cd font-alias-1.0.3

./configure $XORG_CONFIG

make -j$(nproc)

make install



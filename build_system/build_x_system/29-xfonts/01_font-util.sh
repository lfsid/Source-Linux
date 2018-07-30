################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf font-util-1.3.1
tar -xvjf font-util-1.3.1.tar.bz2
cd font-util-1.3.1

./configure $XORG_CONFIG

make -j$(nproc)

make install



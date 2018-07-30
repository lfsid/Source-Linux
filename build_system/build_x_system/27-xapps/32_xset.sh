################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xset-1.2.3
tar -xvjf xset-1.2.3.tar.bz2
cd xset-1.2.3

./configure $XORG_CONFIG

make -j$(nproc)

make install



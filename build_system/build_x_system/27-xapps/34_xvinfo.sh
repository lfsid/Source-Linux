################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xvinfo-1.1.3
tar -xvjf xvinfo-1.1.3.tar.bz2
cd xvinfo-1.1.3

./configure $XORG_CONFIG

make -j$(nproc)

make install



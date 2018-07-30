################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xsetroot-1.1.1
tar -xvjf xsetroot-1.1.1.tar.bz2
cd xsetroot-1.1.1

./configure $XORG_CONFIG

make -j$(nproc)

make install



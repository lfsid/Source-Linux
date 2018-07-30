################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xkbevd-1.1.4
tar -xvjf xkbevd-1.1.4.tar.bz2
cd xkbevd-1.1.4

./configure $XORG_CONFIG

make -j$(nproc)

make install



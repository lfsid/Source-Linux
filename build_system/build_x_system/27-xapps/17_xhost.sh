################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xhost-1.0.7
tar -xvjf xhost-1.0.7.tar.bz2
cd xhost-1.0.7

./configure $XORG_CONFIG

make -j$(nproc)

make install



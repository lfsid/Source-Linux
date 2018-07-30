################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xdriinfo-1.0.5
tar -xvjf xdriinfo-1.0.5.tar.bz2
cd xdriinfo-1.0.5

./configure $XORG_CONFIG

make -j$(nproc)

make install



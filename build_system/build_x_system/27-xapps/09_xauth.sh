################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xauth-1.0.10
tar -xvjf xauth-1.0.10.tar.bz2
cd xauth-1.0.10

./configure $XORG_CONFIG

make -j$(nproc)

make install



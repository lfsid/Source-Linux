################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf iceauth-1.0.7
tar -xvjf iceauth-1.0.7.tar.bz2
cd iceauth-1.0.7

./configure $XORG_CONFIG

make -j$(nproc)

make install



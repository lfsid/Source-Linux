################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xwud-1.0.4
tar -xvjf xwud-1.0.4.tar.bz2
cd xwud-1.0.4

./configure $XORG_CONFIG

make -j$(nproc)

make install



################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xmodmap-1.0.9
tar -xvjf xmodmap-1.0.9.tar.bz2
cd xmodmap-1.0.9

./configure $XORG_CONFIG

make -j$(nproc)

make install



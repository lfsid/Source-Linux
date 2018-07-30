################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xwd-1.0.6
tar -xvjf xwd-1.0.6.tar.bz2
cd xwd-1.0.6

./configure $XORG_CONFIG

make -j$(nproc)

make install



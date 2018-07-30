################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xev-1.2.2
tar -xvjf xev-1.2.2.tar.bz2
cd xev-1.2.2

./configure $XORG_CONFIG

make -j$(nproc)

make install



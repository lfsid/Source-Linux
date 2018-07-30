################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xrdb-1.1.0
tar -xvjf xrdb-1.1.0.tar.bz2
cd xrdb-1.1.0

./configure $XORG_CONFIG

make -j$(nproc)

make install



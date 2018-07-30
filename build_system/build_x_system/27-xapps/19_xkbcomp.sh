################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xkbcomp-1.4.0
tar -xvjf xkbcomp-1.4.0.tar.bz2
cd xkbcomp-1.4.0

./configure $XORG_CONFIG

make -j$(nproc)

make install



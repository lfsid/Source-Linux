################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xgamma-1.0.6
tar -xvjf xgamma-1.0.6.tar.bz2
cd xgamma-1.0.6

./configure $XORG_CONFIG

make -j$(nproc)

make install



################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xpr-1.0.4
tar -xvjf xpr-1.0.4.tar.bz2
cd xpr-1.0.4

./configure $XORG_CONFIG

make -j$(nproc)

make install



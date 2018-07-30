################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf sessreg-1.1.1
tar -xvjf sessreg-1.1.1.tar.bz2
cd sessreg-1.1.1

./configure $XORG_CONFIG

make -j$(nproc)

make install



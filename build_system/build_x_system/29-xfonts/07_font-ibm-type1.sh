################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf font-ibm-type1-1.0.3
tar -xvjf font-ibm-type1-1.0.3.tar.bz2
cd font-ibm-type1-1.0.3

./configure $XORG_CONFIG

make -j$(nproc)

make install



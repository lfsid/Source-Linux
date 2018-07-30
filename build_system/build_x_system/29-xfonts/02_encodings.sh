################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf encodings-1.0.4
tar -xvjf encodings-1.0.4.tar.bz2
cd encodings-1.0.4

./configure $XORG_CONFIG

make -j$(nproc)

make install



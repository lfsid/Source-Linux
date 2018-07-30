################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xcmsdb-1.0.5
tar -xvjf xcmsdb-1.0.5.tar.bz2
cd xcmsdb-1.0.5

./configure $XORG_CONFIG

make -j$(nproc)

make install



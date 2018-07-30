################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf smproxy-1.0.6
tar -xvjf smproxy-1.0.6.tar.bz2
cd smproxy-1.0.6

./configure $XORG_CONFIG

make -j$(nproc)

make install



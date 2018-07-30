######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libdmx-1.1.3
tar -xvjf libdmx-1.1.3.tar.bz2
cd libdmx-1.1.3

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig






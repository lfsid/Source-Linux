######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libfontenc-1.1.3
tar -xvjf libfontenc-1.1.3.tar.bz2
cd libfontenc-1.1.3

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXcomposite-0.4.4
tar -xvjf libXcomposite-0.4.4.tar.bz2
cd libXcomposite-0.4.4

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





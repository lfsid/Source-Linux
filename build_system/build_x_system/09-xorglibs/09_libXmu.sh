######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXmu-1.1.2
tar -xvjf libXmu-1.1.2.tar.bz2
cd libXmu-1.1.2

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





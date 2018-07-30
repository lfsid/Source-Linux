######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXScrnSaver-1.2.2
tar -xvjf libXScrnSaver-1.2.2.tar.bz2
cd libXScrnSaver-1.2.2

./configure $XORG_CONFIG

make -j$(nproc)
make install
/sbin/ldconfig





######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXt-1.1.5
tar -xvjf libXt-1.1.5.tar.bz2
cd libXt-1.1.5

./configure $XORG_CONFIG \
                  --with-appdefaultdir=/etc/X11/app-defaults

make -j$(nproc)
make install
/sbin/ldconfig





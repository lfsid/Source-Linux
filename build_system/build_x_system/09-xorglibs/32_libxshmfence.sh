######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libxshmfence-1.2
tar -xvjf libxshmfence-1.2.tar.bz2
cd libxshmfence-1.2

./configure $XORG_CONFIG CFLAGS="$CFLAGS -D_GNU_SOURCE"

make -j$(nproc)
make install
/sbin/ldconfig

ln -sv $XORG_PREFIX/lib/X11 /usr/lib/X11 &&
ln -sv $XORG_PREFIX/include/X11 /usr/include/X11






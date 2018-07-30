################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libdrm-2.4.91
tar -xvjf libdrm-2.4.91.tar.bz2
cd libdrm-2.4.91

mkdir build &&
cd build &&
meson --prefix=$XORG_PREFIX -Dudev=true &&
ninja

ninja install

cd $src && rm -rf libdrm-2.4.91

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xinit-1.3.4
tar -xvjf xinit-1.3.4.tar.bz2
cd xinit-1.3.4

./configure $XORG_CONFIG --with-xinitdir=/etc/X11/app-defaults &&
make -j$(nproc)

make install &&
ldconfig

cd $aa

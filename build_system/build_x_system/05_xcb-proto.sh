################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xcb-proto-1.12
tar -xvjf xcb-proto-1.12.tar.bz2
cd xcb-proto-1.12

patch -Np1 -i ../xcb-proto-1.12-schema-1.patch

patch -Np1 -i ../xcb-proto-1.12-python3-1.patch

./configure $XORG_CONFIG

make install

cd $aa

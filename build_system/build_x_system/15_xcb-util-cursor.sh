################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xcb-util-cursor-0.1.3
tar -xvjf xcb-util-cursor-0.1.3.tar.bz2
cd xcb-util-cursor-0.1.3

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xcb-util-wm-0.4.1
tar -xvjf xcb-util-wm-0.4.1.tar.bz2
cd xcb-util-wm-0.4.1

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

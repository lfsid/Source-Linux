################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xcb-util-0.4.0
tar -xvjf xcb-util-0.4.0.tar.bz2
cd xcb-util-0.4.0

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

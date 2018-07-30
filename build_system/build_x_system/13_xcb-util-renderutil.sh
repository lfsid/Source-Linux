################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xcb-util-renderutil-0.3.9
tar -xvjf xcb-util-renderutil-0.3.9.tar.bz2
cd xcb-util-renderutil-0.3.9

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

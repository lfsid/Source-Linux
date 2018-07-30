################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-input-vmmouse-13.1.0
tar -xvjf xf86-input-vmmouse-13.1.0.tar.bz2
cd xf86-input-vmmouse-13.1.0

./configure $XORG_CONFIG               \
            --without-hal-fdi-dir      \
            --without-hal-callouts-dir \
            --with-udev-rules-dir=/lib/udev/rules.d &&
make -j$(nproc)

make install

cd $aa

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-input-wacom-0.35.0
tar -xvjf xf86-input-wacom-0.35.0.tar.bz2
cd xf86-input-wacom-0.35.0

./configure $XORG_CONFIG \
            --with-udev-rules-dir=/lib/udev/rules.d \
            --with-systemd-unit-dir=/lib/systemd/system &&
make -j$(nproc)

make install

cd $aa

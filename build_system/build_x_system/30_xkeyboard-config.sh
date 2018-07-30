################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xkeyboard-config-2.21
tar -xvjf xkeyboard-config-2.21.tar.bz2
cd xkeyboard-config-2.21

./configure $XORG_CONFIG --with-xkb-rules-symlink=xorg &&
make -j$(nproc)

make install

cd $aa

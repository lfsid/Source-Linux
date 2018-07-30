################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf twm-1.0.9
tar -xvjf twm-1.0.9.tar.bz2
cd twm-1.0.9

sed -i -e '/^rcdir =/s,^\(rcdir = \).*,\1/etc/X11/app-defaults,' src/Makefile.in &&
./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

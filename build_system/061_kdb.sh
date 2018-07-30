#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf kbd-2.0.4
tar -xvf kbd-2.0.4.tar.xz
cd kbd-2.0.4

patch -Np1 -i ../kbd-2.0.4-backspace-1.patch

sed -i 's/\(RESIZECONS_PROGS=\)yes/\1no/g' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr --disable-vlock

make -j$(nproc)
make install

cd $src && rm -rf kbd-2.0.4


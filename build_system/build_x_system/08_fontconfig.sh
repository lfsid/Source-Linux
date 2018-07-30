################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf fontconfig-2.12.4
tar -xvjf fontconfig-2.12.4.tar.bz2
cd fontconfig-2.12.4

rm -f src/fcobjshash.h

./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-docs       \
            --docdir=/usr/share/doc/fontconfig-2.12.4 &&
make -j$(nproc)

make install

cd $aa

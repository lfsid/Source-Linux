#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf man-db-2.8.3
tar -xvf man-db-2.8.3.tar.xz
cd man-db-2.8.3

./configure --prefix=/usr                        \
            --docdir=/usr/share/doc/man-db-2.8.3 \
            --sysconfdir=/etc                    \
            --disable-setuid                     \
            --enable-cache-owner=bin             \
            --with-browser=/usr/bin/lynx         \
            --with-vgrind=/usr/bin/vgrind        \
            --with-grap=/usr/bin/grap

make -j$(nproc)
make install

cd $src && rm -rf man-db-2.8.3


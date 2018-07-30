################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf dbus-glib-0.110
tar -xvzf dbus-glib-0.110.tar.gz
cd dbus-glib-0.110

./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf dbus-glib-0.110

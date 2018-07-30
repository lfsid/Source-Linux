################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf dbus-1.12.8
tar -xvzf dbus-1.12.8.tar.gz
cd dbus-1.12.8

groupadd -g 18 messagebus &&
useradd -c "D-Bus Message Daemon User" -d /var/run/dbus \
        -u 18 -g messagebus -s /bin/false messagebus

./configure --prefix=/usr                        \
            --sysconfdir=/etc                    \
            --localstatedir=/var                 \
            --disable-doxygen-docs               \
            --disable-xml-docs                   \
            --disable-static                     \
            --docdir=/usr/share/doc/dbus-1.12.8 \
            --with-console-auth-dir=/run/console \
            --with-system-pid-file=/run/dbus/pid \
            --with-system-socket=/run/dbus/system_bus_socket &&
make -j$(nproc)

make install

dbus-uuidgen --ensure

cd $src && rm -rf dbus-1.12.8 blfs-bootscripts-20180105

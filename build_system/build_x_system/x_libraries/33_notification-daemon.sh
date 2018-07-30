#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf notification-daemon-0.7.6
tar -xvf notification-daemon-0.7.6.tar.xz
cd notification-daemon-0.7.6

./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --libexecdir=/usr/lib/notification-daemon &&
make -j$(nproc)

make install

cd $src && rm -rf notification-daemon-0.7.6

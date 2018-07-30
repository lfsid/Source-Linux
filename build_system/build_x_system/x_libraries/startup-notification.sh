#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf startup-notification-0.12
tar -xvzf startup-notification-0.12.tar.gz
cd startup-notification-0.12

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf startup-notification-0.12

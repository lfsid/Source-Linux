#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libnotify-0.7.7
tar -xvf libnotify-0.7.7.tar.xz
cd libnotify-0.7.7

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libnotify-0.7.7

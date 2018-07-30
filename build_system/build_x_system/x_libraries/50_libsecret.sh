#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libsecret-0.18.5
tar -xvf libsecret-0.18.5.tar.xz
cd libsecret-0.18.5

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libsecret-0.18.5

#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libcanberra-0.30
tar -xvf libcanberra-0.30.tar.xz
cd libcanberra-0.30

./configure --prefix=/usr --disable-oss &&
make -j$(nproc)

make install

cd $src && rm -rf libcanberra-0.30

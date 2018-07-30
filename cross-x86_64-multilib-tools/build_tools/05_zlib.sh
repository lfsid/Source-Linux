#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf zlib-1.2.11
tar -xvf zlib-1.2.11.tar.xz
cd zlib-1.2.11

./configure \
    --prefix=/tools  \
    --libdir=/tools/lib64

make -j$(nproc)
make install

cd $src && rm -rf zlib-1.2.11


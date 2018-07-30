#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf xz-5.2.3
tar -xvf xz-5.2.3.tar.xz
cd xz-5.2.3

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --libdir=/tools/lib64

make -j$(nproc)
make install

cd $src && rm -rf xz-5.2.3


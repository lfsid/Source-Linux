#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf isl-0.17.1
tar -xvf isl-0.17.1.tar.xz
cd isl-0.17.1

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --libdir=/tools/lib64

make -j$(nproc)
make install

cd $src && rm -rf isl-0.17.1


#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf patch-2.7.5
tar -xvf patch-2.7.5.tar.xz
cd patch-2.7.5

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET}

make -j$(nproc)
make install

cd $src && rm -rf patch-2.7.5


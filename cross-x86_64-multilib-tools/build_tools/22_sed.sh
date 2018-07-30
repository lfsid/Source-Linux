#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf sed-4.4
tar -xvf sed-4.4.tar.xz
cd sed-4.4

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET}

make -j$(nproc)
make install

cd $src && rm -rf sed-4.4


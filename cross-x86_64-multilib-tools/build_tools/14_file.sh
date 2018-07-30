#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf file-5.31
tar -xvzf file-5.31.tar.gz
cd file-5.31

./configure \
    --prefix=/tools \
    --libdir=/tools/lib64 \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET}

make -j$(nproc)
make install

cd $src && rm -rf file-5.31


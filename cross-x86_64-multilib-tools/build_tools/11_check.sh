#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf check-0.11.0
tar -xvzf check-0.11.0.tar.gz
cd check-0.11.0

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --libdir=/tools/lib64

make -j$(nproc)
make install

cd $src && rm -rf check-0.11.0


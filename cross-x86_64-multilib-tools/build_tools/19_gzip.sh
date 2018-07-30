#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gzip-1.8
tar -xvf gzip-1.8.tar.xz
cd gzip-1.8

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET}

make -j$(nproc)
make install

cd $src && rm -rf gzip-1.8


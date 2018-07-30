#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gawk-4.1.4
tar -xvf gawk-4.1.4.tar.xz
cd gawk-4.1.4

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET}

make -j$(nproc)
make install

cd $src && rm -rf gawk-4.1.4


#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf bison-3.0.4
tar -xvf bison-3.0.4.tar.xz
cd bison-3.0.4

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET}


make -j$(nproc)
make install

cd $src && rm -rf bison-3.0.4


#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gmp-6.1.2
tar -xvf gmp-6.1.2.tar.xz
cd gmp-6.1.2

CC_FOR_BUILD=gcc \
./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --libdir=/tools/lib64 \
    --enable-cxx

make -j$(nproc)
make install

cd $src && rm -rf gmp-6.1.2


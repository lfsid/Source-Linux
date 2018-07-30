#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf grep-3.0
tar -xvf grep-3.0.tar.xz
cd grep-3.0

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --without-included-regex

make -j$(nproc)
make install

cd $src && rm -rf grep-3.0


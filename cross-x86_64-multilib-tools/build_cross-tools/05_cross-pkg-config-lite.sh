#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf pkg-config-lite-0.28-1
tar -xvzf pkg-config-lite-0.28-1.tar.gz
cd pkg-config-lite-0.28-1

./configure \
    --prefix=/cross-tools  \
    --host=${LFS_TARGET} \
    --with-pc-path=/tools/lib64/pkgconfig:/tools/share/pkgconfig


make -j$(nproc)
make install

cd $src && rm -rf pkg-config-lite-0.28-1


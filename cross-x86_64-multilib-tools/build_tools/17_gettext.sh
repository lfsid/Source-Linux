#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gettext-0.19.8.1
tar -xvf gettext-0.19.8.1.tar.xz
cd gettext-0.19.8.1

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --disable-shared

make -j$(nproc)

make install

cd $src && rm -rf gettext-0.19.8.1


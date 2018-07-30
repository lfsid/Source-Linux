#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf ncurses-6.0
tar -xvzf ncurses-6.0.tar.gz
cd ncurses-6.0

patch -Np1 -i ../ncurses-6.0-bash_fix-1.patch

./configure \
    --prefix=/tools \
    --with-shared \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --enable-widec   \
    --without-debug \
    --without-ada \
    --enable-overwrite \
    --with-build-cc=gcc \
    --libdir=/tools/lib64

make -j$(nproc)
make install

cd $src && rm -rf ncurses-6.0


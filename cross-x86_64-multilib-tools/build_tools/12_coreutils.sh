#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf coreutils-8.27
tar -xvf coreutils-8.27.tar.xz
cd coreutils-8.27

patch -Np1 -i ../coreutils-8.27-uname-1.patch

FORCE_UNSAFE_CONFIGURE=1 \
./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --enable-install-program=hostname \
    --cache-file=config.cache

sed -i -e 's/^man1_MANS/#man1_MANS/' Makefile

FORCE_UNSAFE_CONFIGURE=1 make -j$(nproc)

make install

cd $src && rm -rf coreutils-8.27


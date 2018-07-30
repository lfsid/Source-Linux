#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf coreutils-8.30
tar -xvf coreutils-8.30.tar.xz
cd coreutils-8.30

FORCE_UNSAFE_CONFIGURE=1 ./configure \
            --prefix=/tools          \
            --enable-install-program=hostname

FORCE_UNSAFE_CONFIGURE=1 make -j$(nproc)

make install

cd $src && rm -rf coreutils-8.30


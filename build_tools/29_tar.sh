#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf tar-1.30
tar -xvf tar-1.30.tar.xz
cd tar-1.30

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf tar-1.30


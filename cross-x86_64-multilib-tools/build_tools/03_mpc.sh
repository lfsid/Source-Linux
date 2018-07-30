#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf mpc-1.0.3
tar -xvzf mpc-1.0.3.tar.gz
cd mpc-1.0.3

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --libdir=/tools/lib64

make -j$(nproc)
make install

cd $src && rm -rf mpc-1.0.3


################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf mpc-1.0.3
tar -xvzf mpc-1.0.3.tar.gz
cd mpc-1.0.3

CC="gcc -isystem /usr/include ${BUILD32}" \
LDFLAGS="-Wl,-rpath-link,/usr/lib:/lib ${BUILD32}" \
./configure \
    --prefix=/usr \
    --host=${LFS_TARGET32}

make -j$(nproc)

make install

cd $src && rm -rf mpc-1.0.3

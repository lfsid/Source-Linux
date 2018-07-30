#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf mpc-1.0.3
tar -xvzf mpc-1.0.3.tar.gz
cd mpc-1.0.3

LDFLAGS="-Wl,-rpath,/cross-tools/lib" \
./configure \
    --prefix=/cross-tools \
    --disable-static \
    --with-gmp=/cross-tools \
    --with-mpfr=/cross-tools

make -j$(nproc)
make install

cd $src && rm -rf mpc-1.1.0


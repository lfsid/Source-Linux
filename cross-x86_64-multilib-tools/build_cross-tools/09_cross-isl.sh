#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf isl-0.17.1
tar -xvf isl-0.17.1.tar.xz
cd isl-0.17.1

LDFLAGS="-Wl,-rpath,/cross-tools/lib" \
./configure \
    --prefix=/cross-tools \
    --disable-static \
    --with-gmp-prefix=/cross-tools

make -j$(nproc)
make install

cd $src && rm -rf isl-0.17.1


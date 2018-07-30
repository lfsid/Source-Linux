#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf cairo-1.14.12
tar -xvf cairo-1.14.12.tar.xz
cd cairo-1.14.12

./configure --prefix=/usr    \
            --disable-static \
            --enable-tee &&
make -j$(nproc)

make install

cd $src && rm -rf cairo-1.14.12

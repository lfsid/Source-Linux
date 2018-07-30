################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf wayland-1.14.0
tar -xvf wayland-1.14.0.tar.xz
cd wayland-1.14.0

./configure --prefix=/usr    \
            --disable-static \
            --disable-documentation &&
make -j$(nproc)

make install


cd $aa

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf wayland-protocols-1.13
tar -xvf wayland-protocols-1.13.tar.xz
cd wayland-protocols-1.13

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf wayland-protocols-1.13

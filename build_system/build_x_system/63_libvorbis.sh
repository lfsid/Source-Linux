################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libvorbis-1.3.5
tar -xvf libvorbis-1.3.5.tar.xz
cd libvorbis-1.3.5

sed -i '/components.png \\/{n;d}' doc/Makefile.in

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $aa

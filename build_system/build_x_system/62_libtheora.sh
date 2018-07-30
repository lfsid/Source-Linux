################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libtheora-1.1.1
tar -xvf libtheora-1.1.1.tar.xz
cd libtheora-1.1.1

sed -i 's/png_\(sizeof\)/\1/g' examples/png2theora.c &&
./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $aa

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libpng-1.6.31
tar -xvf libpng-1.6.31.tar.xz
cd libpng-1.6.31

gzip -cd ../libpng-1.6.31-apng.patch.gz | patch -p0

LIBS=-lpthread ./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $aa

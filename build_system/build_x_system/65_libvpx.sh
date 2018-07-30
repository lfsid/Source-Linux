################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libvpx-1.7.0
tar -xvf libvpx-1.7.0.tar.gz
cd libvpx-1.7.0

sed -i 's/cp -p/cp/' build/make/Makefile &&

mkdir libvpx-build            &&
cd    libvpx-build            &&

../configure --prefix=/usr    \
             --enable-shared  \
             --disable-static &&
make -j$(nproc)

make install

cd $aa

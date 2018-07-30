################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libass-0.14.0
tar -xvf libass-0.14.0.tar.xz
cd libass-0.14.0

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $aa

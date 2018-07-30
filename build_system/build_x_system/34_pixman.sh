################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf pixman-0.34.0
tar -xvf pixman-0.34.0.tar.gz
cd pixman-0.34.0

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $aa

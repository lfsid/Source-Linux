################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libepoxy-1.4.3
tar -xvf libepoxy-1.4.3.tar.xz
cd libepoxy-1.4.3

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $aa

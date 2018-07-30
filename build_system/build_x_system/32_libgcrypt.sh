################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libgcrypt-1.8.0
tar -xvjf libgcrypt-1.8.0.tar.bz2
cd libgcrypt-1.8.0

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $aa

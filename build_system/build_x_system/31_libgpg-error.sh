################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libgpg-error-1.27
tar -xvjf libgpg-error-1.27.tar.bz2
cd libgpg-error-1.27

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $aa

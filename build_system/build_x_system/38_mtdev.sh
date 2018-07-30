################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf mtdev-1.1.5
tar -xvjf mtdev-1.1.5.tar.bz2
cd mtdev-1.1.5

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $aa

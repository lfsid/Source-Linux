################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf fribidi-1.0.1
tar -xvjf fribidi-1.0.1.tar.bz2
cd fribidi-1.0.1

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $aa

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf nasm-2.13.02
tar -xvf nasm-2.13.02.tar.xz
cd nasm-2.13.02

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $aa

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf which-2.21
tar -xvf which-2.21.tar.gz
cd which-2.21

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $aa

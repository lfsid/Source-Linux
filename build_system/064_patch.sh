#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf patch-2.7.6
tar -xvf patch-2.7.6.tar.xz
cd patch-2.7.6

./configure --prefix=/usr

make -j$(nproc)

make install

cd $aa


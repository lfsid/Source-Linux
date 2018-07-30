#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf vala-0.28.1
tar -xvf vala-0.28.1.tar.xz
cd vala-0.28.1

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf vala-0.28.1

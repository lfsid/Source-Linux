#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf diffutils-3.6
tar -xvf diffutils-3.6.tar.xz
cd diffutils-3.6

./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf diffutils-3.6


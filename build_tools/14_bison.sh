#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf bison-3.0.5
tar -xvf bison-3.0.5.tar.xz
cd bison-3.0.5

./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf bison-3.0.5


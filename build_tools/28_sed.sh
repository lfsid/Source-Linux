#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf sed-4.5
tar -xvf sed-4.5.tar.xz
cd sed-4.5

./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf sed-4.5


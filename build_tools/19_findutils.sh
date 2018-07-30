#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf findutils-4.6.0
tar -xvf findutils-4.6.0.tar.gz
cd findutils-4.6.0

./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf findutils-4.6.0


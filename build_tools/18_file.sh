#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf file-5.34
tar -xvf file-5.34.tar.gz
cd file-5.34

./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf file-5.34


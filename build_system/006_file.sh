#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf file-5.34
tar -xvzf file-5.34.tar.gz
cd file-5.34

./configure --prefix=/usr

make -j$(nproc)
make install

cd $src && rm -rf file-5.34


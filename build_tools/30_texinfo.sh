#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf texinfo-6.5
tar -xvf texinfo-6.5.tar.xz
cd texinfo-6.5

./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf texinfo-6.5


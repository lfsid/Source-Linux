#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf xz-5.2.4
tar -xvf xz-5.2.4.tar.xz
cd xz-5.2.4

./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf xz-5.2.4


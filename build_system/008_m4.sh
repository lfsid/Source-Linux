#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf m4-1.4.18
tar -xvf m4-1.4.18.tar.xz
cd m4-1.4.18

./configure --prefix=/usr

make -j$(nproc)

make install

cd $src && rm -rf m4-1.4.18


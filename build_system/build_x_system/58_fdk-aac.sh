################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf fdk-aac-0.1.5
tar -xvf fdk-aac-0.1.5.tar.gz
cd fdk-aac-0.1.5

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $aa

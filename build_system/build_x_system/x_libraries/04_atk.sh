#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf atk-2.26.1
tar -xvf atk-2.26.1.tar.xz
cd atk-2.26.1

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf atk-2.26.1

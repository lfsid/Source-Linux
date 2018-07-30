#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gzip-1.9
tar -xvf gzip-1.9.tar.xz
cd gzip-1.9

./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf gzip-1.9

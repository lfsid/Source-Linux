#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gawk-4.2.1
tar -xvf gawk-4.2.1.tar.xz
cd gawk-4.2.1

./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf gawk-4.2.1


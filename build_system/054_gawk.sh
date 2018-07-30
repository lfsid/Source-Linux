#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf gawk-4.2.1
tar -xvf gawk-4.2.1.tar.xz
cd gawk-4.2.1

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr

make -j$(nproc)
make install

cd $src && rm -rf gawk-4.2.1


#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf bison-3.0.5
tar -xvf bison-3.0.5.tar.xz
cd bison-3.0.5

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.0.4
make -j$(nproc)
make install

cd $src && rm -rf bison-3.0.5


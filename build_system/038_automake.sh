#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf automake-1.16.1
tar -xvf automake-1.16.1.tar.xz
cd automake-1.16.1

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.1

make -j$(nproc)
make install

cd $src && rm -rf automake-1.16.1


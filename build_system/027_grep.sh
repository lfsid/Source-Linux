#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf grep-3.1
tar -xvf grep-3.1.tar.xz
cd grep-3.1
./configure --prefix=/usr --bindir=/bin
make -j$(nproc)
make install

cd $src && rm -rf grep-3.1


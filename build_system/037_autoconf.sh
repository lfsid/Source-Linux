#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf autoconf-2.69
tar -xvf autoconf-2.69.tar.xz
cd autoconf-2.69

./configure --prefix=/usr

make -j$(nproc)
make install

cd $src && rm -rf autoconf-2.69


################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf zlib-1.2.11
tar -xvf zlib-1.2.11.tar.xz
cd zlib-1.2.11

./configure --prefix=/usr

make -j$(nproc) 
make install

mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libz.so) /usr/lib/libz.so

cd $aa

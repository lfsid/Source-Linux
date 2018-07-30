#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf gzip-1.9
tar -xvf gzip-1.9.tar.xz
cd gzip-1.9

./configure --prefix=/usr

make -j$(nproc)
make install

mv -v /usr/bin/gzip /bin

cd $src && rm -rf gzip-1.9


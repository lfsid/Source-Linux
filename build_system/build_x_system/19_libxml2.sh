################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libxml2-2.9.7
tar -xvf libxml2-2.9.7.tar.gz
cd libxml2-2.9.7

patch -Np1 -i ../libxml2-2.9.7-python3_hack-1.patch

sed -i '/_PyVerify_fd/,+1d' python/types.c

./configure --prefix=/usr    \
            --disable-static \
            --with-history   \
            --with-python=/usr/bin/python3 &&
make -j$(nproc)

make install


cd $aa

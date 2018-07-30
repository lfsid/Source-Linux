################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf nettle-3.4
tar -xvzf nettle-3.4.tar.gz
cd nettle-3.4

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf nettle-3.4

################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf apr-1.6.3
tar -xvjf apr-1.6.3.tar.bz2
cd apr-1.6.3

./configure --prefix=/usr    \
            --disable-static \
            --with-installbuilddir=/usr/share/apr-1/build &&
make -j$(nproc)

make install

cd $src && rm -rf apr-1.6.3

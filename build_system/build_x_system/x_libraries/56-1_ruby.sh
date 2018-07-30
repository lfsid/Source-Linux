#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf ruby-2.5.0
tar -xvf ruby-2.5.0.tar.xz
cd ruby-2.5.0

./configure --prefix=/usr   \
            --enable-shared \
            --docdir=/usr/share/doc/ruby-2.5.0 &&
make -j$(nproc)

make install

cd $src && rm -rf ruby-2.5.0

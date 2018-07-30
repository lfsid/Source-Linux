#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf imlib2-1.4.10
tar -xvjf imlib2-1.4.10.tar.bz2
cd imlib2-1.4.10

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf imlib2-1.4.10

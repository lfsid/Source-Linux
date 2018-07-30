#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf iso-codes-3.77
tar -xvf iso-codes-3.77.tar.xz
cd iso-codes-3.77

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf iso-codes-3.77

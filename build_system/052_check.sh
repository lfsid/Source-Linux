#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf check-0.12.0
tar -xvf check-0.12.0.tar.gz
cd check-0.12.0

./configure --prefix=/usr

make -j$(nproc)
make install

cd $src && rm -rf check-0.12.0


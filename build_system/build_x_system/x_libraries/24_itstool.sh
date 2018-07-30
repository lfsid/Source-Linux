#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf itstool-2.0.2
tar -xvjf itstool-2.0.2.tar.bz2
cd itstool-2.0.2

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf itstool-2.0.2

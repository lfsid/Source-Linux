#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf harfbuzz-1.7.5
tar -xvjf harfbuzz-1.7.5.tar.bz2
cd harfbuzz-1.7.5

./configure --prefix=/usr --with-gobject &&
make -j$(nproc)

make install

cd $src && rm -rf harfbuzz-1.7.5

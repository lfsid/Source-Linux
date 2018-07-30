################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf x264-snapshot-20180212-2245-stable
tar -xvjf x264-snapshot-20180212-2245-stable.tar.bz2
cd x264-snapshot-20180212-2245-stable

./configure --prefix=/usr \
            --enable-shared \
            --disable-cli &&
make -j$(nproc)

make install

cd $aa

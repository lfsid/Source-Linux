################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf x265_v2.6
tar -xvf x265_2.6.tar.gz
cd x265_v2.6

mkdir bld &&
cd    bld &&

cmake -DCMAKE_INSTALL_PREFIX=/usr ../source &&
make -j$(nproc)

make install

cd $aa

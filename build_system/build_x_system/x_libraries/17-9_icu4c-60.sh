#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf icu
tar -xvzf icu4c-60_2-src.tgz
cd icu

cd source                                    &&

./configure --prefix=/usr                    &&
make -j$(nproc)

make install

cd $src && rm -rf icu

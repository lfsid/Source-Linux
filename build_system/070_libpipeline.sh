################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf libpipeline-1.5.0
tar -xvzf libpipeline-1.5.0.tar.gz
cd libpipeline-1.5.0

./configure --prefix=/usr

make -j$(nproc)

make install

cd $src && rm -rf libpipeline-1.5.0

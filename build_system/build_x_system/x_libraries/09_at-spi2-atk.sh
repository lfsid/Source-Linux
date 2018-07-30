#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf at-spi2-atk-2.26.1
tar -xvf at-spi2-atk-2.26.1.tar.xz
cd at-spi2-atk-2.26.1

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf at-spi2-atk-2.26.1

#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf at-spi2-core-2.26.2
tar -xvf at-spi2-core-2.26.2.tar.xz
cd at-spi2-core-2.26.2

./configure --prefix=/usr \
            --sysconfdir=/etc &&
make -j$(nproc)

make install

cd $src && rm -rf at-spi2-core-2.26.2

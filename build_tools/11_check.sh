#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf check-0.12.0
tar -xvf check-0.12.0.tar.gz
cd check-0.12.0

PKG_CONFIG= ./configure --prefix=/tools

make -j$(nproc)
make install

cd $src && rm -rf check-0.12.0


#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf less-530
tar -xvf less-530.tar.gz
cd less-530

./configure --prefix=/usr --sysconfdir=/etc

make -j$(nproc)
make install

cd $src && rm -rf less-530


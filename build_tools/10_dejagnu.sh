#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf dejagnu-1.6.1
tar -xvf dejagnu-1.6.1.tar.gz
cd dejagnu-1.6.1

./configure --prefix=/tools

make -j$(nproc) install

cd $src && rm -rf dejagnu-1.6.1


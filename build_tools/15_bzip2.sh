#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf bzip2-1.0.6
tar -xvf bzip2-1.0.6.tar.gz
cd bzip2-1.0.6

make -j$(nproc)
make PREFIX=/tools install

cd $src && rm -rf bzip2-1.0.6


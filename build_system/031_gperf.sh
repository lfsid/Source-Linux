#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf gperf-3.1
tar -xvf gperf-3.1.tar.gz
cd gperf-3.1

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1
make -j$(nproc)
make install

cd $src && rm -rf gperf-3.1


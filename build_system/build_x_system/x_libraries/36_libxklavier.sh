#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libxklavier-5.4
tar -xvjf libxklavier-5.4.tar.bz2
cd libxklavier-5.4

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libxklavier-5.4

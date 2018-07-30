#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf pygtk-2.24.0
tar -xvjf pygtk-2.24.0.tar.bz2
cd pygtk-2.24.0

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf pygtk-2.24.0

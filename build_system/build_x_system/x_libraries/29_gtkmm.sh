#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gtkmm-3.16.0
tar -xvf gtkmm-3.16.0.tar.xz
cd gtkmm-3.16.0

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf gtkmm-3.16.0

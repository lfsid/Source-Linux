#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libsigc++-2.10.0
tar -xvf libsigc++-2.10.0.tar.xz
cd libsigc++-2.10.0

sed -e '/^libdocdir =/ s/$(book_name)/libsigc++-2.10.0/' -i docs/Makefile.in

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf libsigc++-2.10.0

#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf atkmm-2.24.2
tar -xvf atkmm-2.24.2.tar.xz
cd atkmm-2.24.2

sed -e '/^libdocdir =/ s/$(book_name)/atkmm-2.24.2/' \
    -i doc/Makefile.in

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf atkmm-2.24.2

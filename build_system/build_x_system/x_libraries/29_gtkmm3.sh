#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gtkmm-3.22.2
tar -xvf gtkmm-3.22.2.tar.xz
cd gtkmm-3.22.2

sed -e '/^libdocdir =/ s/$(book_name)/gtkmm-3.22.2/' \
    -i docs/Makefile.in

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf gtkmm-3.22.2

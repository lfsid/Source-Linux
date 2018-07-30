#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf cairomm-1.12.2
tar -xvf cairomm-1.12.2.tar.gz
cd cairomm-1.12.2

sed -e '/^libdocdir =/ s/$(book_name)/cairomm-1.12.2/' \
    -i docs/Makefile.in

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf cairomm-1.12.2

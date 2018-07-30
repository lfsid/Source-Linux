#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf pangomm-2.40.1
tar -xvf pangomm-2.40.1.tar.xz
cd pangomm-2.40.1

sed -e '/^libdocdir =/ s/$(book_name)/pangomm-2.40.1/' \
    -i docs/Makefile.in

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf pangomm-2.40.1

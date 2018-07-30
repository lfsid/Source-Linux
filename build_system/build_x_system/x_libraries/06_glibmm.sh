#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf glibmm-2.54.1
tar -xvf glibmm-2.54.1.tar.xz
cd glibmm-2.54.1

sed -e '/^libdocdir =/ s/$(book_name)/glibmm-2.54.1/' \
    -i docs/Makefile.in

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf glibmm-2.54.1

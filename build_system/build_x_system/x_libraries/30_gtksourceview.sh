#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gtksourceview-3.14.3
tar -xvf gtksourceview-3.14.3.tar.xz
cd gtksourceview-3.14.3

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf gtksourceview-3.14.3

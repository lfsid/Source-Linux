#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf glib-2.54.3
tar -xvf glib-2.54.3.tar.xz
cd glib-2.54.3

./configure --prefix=/usr --with-pcre=system &&
make -j$(nproc)

make install

cd $src && rm -rf glib-2.54.3

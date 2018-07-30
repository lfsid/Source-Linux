#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gdk-pixbuf-2.34.0
tar -xvf gdk-pixbuf-2.34.0.tar.xz
cd gdk-pixbuf-2.34.0

sed -i "/seems to be moved/s/^/#/" ltmain.sh &&
./configure --prefix=/usr --with-x11 &&
make -j$(nproc)

make install

cd $src && rm -rf gdk-pixbuf-2.34.0

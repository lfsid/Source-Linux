#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gobject-introspection-1.54.1
tar -xvf gobject-introspection-1.54.1.tar.xz
cd gobject-introspection-1.54.1

./configure --prefix=/usr    \
            --disable-static \
            --with-python=/usr/bin/python3 &&
make -j$(nproc)

make install

cd $src && rm -rf gobject-introspection-1.54.1

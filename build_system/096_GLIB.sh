################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf glib-2.56.1
tar -xvf glib-2.56.1.tar.xz
cd glib-2.56.1

patch -Np1 -i ../glib-2.56.1-skip_warnings-1.patch

./configure --prefix=/usr      \
            --with-pcre=system \
            --with-python=/usr/bin/python3 &&
make -j$(nproc)

make install

cd $src && rm -rf glib-2.56.1

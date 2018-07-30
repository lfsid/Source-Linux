################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf Python-3.7.0
tar -xvf Python-3.7.0.tar.xz
cd Python-3.7.0

./configure --prefix=/usr       \
            --enable-shared     \
            --with-system-expat \
            --with-system-ffi   \
            --with-ensurepip=yes

make -j$(nproc)

make install
chmod -v 755 /usr/lib/libpython3.7m.so
chmod -v 755 /usr/lib/libpython3.so

install -v -dm755 /usr/share/doc/python-3.7.0/html 

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.7.0/html \
    -xvf ../python-3.7.0-docs-html.tar.bz2

cd $src && rm -rf Python-3.7.0

################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf Python-2.7.15
tar -xvf Python-2.7.15.tar.xz
cd Python-2.7.15

./configure --prefix=/usr       \
            --enable-shared     \
            --with-system-expat \
            --with-system-ffi   \
            --with-ensurepip=yes \
            --enable-unicode=ucs4 &&
make -j$(nproc)

make install &&
chmod -v 755 /usr/lib/libpython2.7.so.1.0


cd $src && rm -rf Python-2.7.15

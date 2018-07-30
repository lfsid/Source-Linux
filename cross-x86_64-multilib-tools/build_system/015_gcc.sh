################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf gcc-7.1.0
tar -xvjf gcc-7.1.0.tar.bz2
cd gcc-7.1.0

sed -i 's@\./fixinc\.sh@-c true@' gcc/Makefile.in

cd $src
mkdir gcc-build && cd gcc-build

SED=sed CC="gcc -isystem /usr/include ${BUILD64}" \
CXX="g++ -isystem /usr/include ${BUILD64}" \
LDFLAGS="-Wl,-rpath-link,/usr/lib64:/lib64:/usr/lib:/lib" \
../gcc-7.1.0/configure \
    --prefix=/usr \
    --libdir=/usr/lib64 \
    --libexecdir=/usr/lib64 \
    --enable-languages=c,c++ \
    --with-system-zlib \
    --enable-install-libiberty \
    --disable-bootstrap

make -j$(nproc)

make install

ln -sv ../usr/bin/cpp /lib

mv -v /usr/lib/libstdc++*gdb.py /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib64/libstdc++*gdb.py /usr/share/gdb/auto-load/usr/lib64

cd $src && rm -rf gcc-7.1.0

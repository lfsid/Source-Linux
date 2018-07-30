################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf isl-0.17.1
tar -xvf isl-0.17.1.tar.xz
cd isl-0.17.1

CC="gcc -isystem /usr/include ${BUILD32}" \
LDFLAGS="-Wl,-rpath-link,/usr/lib:/lib ${BUILD32}" \
./configure \
    --prefix=/usr \
    --host=${LFS_TARGET32}

make -j$(nproc)

make install

mkdir -pv /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib/libisl*gdb.py /usr/share/gdb/auto-load/usr/lib

cd $src && rm -rf isl-0.17.1

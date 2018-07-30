################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf isl-0.17.1
tar -xvf isl-0.17.1.tar.xz
cd isl-0.17.1

CC="gcc -isystem /usr/include ${BUILD64}" \
LDFLAGS="-Wl,-rpath-link,/usr/lib64:/lib64 ${BUILD64}" \
./configure \
    --prefix=/usr \
    --libdir=/usr/lib64

make -j$(nproc)

make install

mkdir -pv /usr/share/gdb/auto-load/usr/lib64
mv -v /usr/lib64/*gdb.py /usr/share/gdb/auto-load/usr/lib64

cd $src && rm -rf isl-0.17.1

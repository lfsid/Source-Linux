################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf zlib-1.2.11
tar -xvf zlib-1.2.11.tar.xz
cd zlib-1.2.11

CC="gcc -isystem /usr/include ${BUILD64}" \
CXX="g++ -isystem /usr/include ${BUILD64}" \
LDFLAGS="-Wl,-rpath-link,/usr/lib64:/lib64 ${BUILD64}" \
./configure \
    --prefix=/usr \
    --libdir=/usr/lib64

make -j$(nproc)

make install

mv -v /usr/lib64/libz.so.* /lib64
ln -sfv ../../lib64/$(readlink /usr/lib64/libz.so) /usr/lib64/libz.so

mkdir -pv /usr/share/doc/zlib-1.2.11
cp -rv doc/* examples /usr/share/doc/zlib-1.2.11

cd $src && rm -rf zlib-1.2.11

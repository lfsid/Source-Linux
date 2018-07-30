################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf gmp-6.1.2
tar -xvf gmp-6.1.2.tar.xz
cd gmp-6.1.2

CC="gcc -isystem /usr/include ${BUILD32}" \
CXX="g++ -isystem /usr/include ${BUILD32}" \
LDFLAGS="-Wl,-rpath-link,/usr/lib:/lib ${BUILD32}" \
  ABI=32 ./configure \
    --prefix=/usr \
    --enable-cxx

make -j$(nproc)

make install

mv -v /usr/include/gmp{,-32}.h

cd $src && rm -rf gmp-6.1.2

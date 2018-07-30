################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf popt-1.16
tar -xvzf popt-1.16.tar.gz
cd popt-1.16

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

install -v -m755 -d /usr/share/doc/popt-1.16 &&
install -v -m644 doxygen/html/* /usr/share/doc/popt-1.16

cd $src && rm -rf popt-1.16

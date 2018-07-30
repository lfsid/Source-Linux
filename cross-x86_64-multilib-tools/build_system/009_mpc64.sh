################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf mpc-1.0.3
tar -xvzf mpc-1.0.3.tar.gz
cd mpc-1.0.3

CC="gcc -isystem /usr/include ${BUILD64}" \
LDFLAGS="-Wl,-rpath-link,/usr/lib64:/lib64 ${BUILD64}" \
./configure \
    --prefix=/usr \
    --libdir=/usr/lib64 \
    --docdir=/usr/share/doc/mpc-1.0.3

make -j$(nproc)
make html
make install
make install-html

cd $src && rm -rf mpc-1.0.3

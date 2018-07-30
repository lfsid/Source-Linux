#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf mpc-1.1.0
tar -xvf mpc-1.1.0.tar.gz
cd mpc-1.1.0

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.1.0

make -j$(nproc)
make html

make install
make install-html

cd $src && rm -rf mpc-1.1.0


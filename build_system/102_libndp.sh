################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf libndp-1.6
tar -xvzf libndp-1.6.tar.gz
cd libndp-1.6

./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-static     &&
make -j$(nproc)

make install

cd $src && rm -rf libndp-1.6

################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf cpio-2.12
tar -xvjf cpio-2.12.tar.bz2
cd cpio-2.12

./configure --prefix=/usr \
            --bindir=/bin \
            --enable-mt   \
            --with-rmt=/usr/libexec/rmt &&
make -j$(nproc)

make install

cd $src && rm -rf cpio-2.12

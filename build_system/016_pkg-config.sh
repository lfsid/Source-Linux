#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf pkg-config-0.29.2
tar -xvf pkg-config-0.29.2.tar.gz
cd pkg-config-0.29.2
./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2

make -j$(nproc)

make install

cd $src && rm -rf pkg-config-0.29.2


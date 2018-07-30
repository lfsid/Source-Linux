#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf pango-1.40.1
tar -xvf pango-1.40.1.tar.xz
cd pango-1.40.1

./autogen.sh --prefix=/usr --sysconfdir=/etc &&
make -j$(nproc)

make install

cd $src && rm -rf pango-1.40.1

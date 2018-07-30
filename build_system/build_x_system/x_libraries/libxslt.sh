#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libxslt-1.1.32
tar -xvzf libxslt-1.1.32.tar.gz
cd libxslt-1.1.32

sed -i s/3000/5000/ libxslt/transform.c doc/xsltproc.{1,xml} &&
./configure --prefix=/usr --disable-static                   &&
make -j$(nproc)

make install

cd $src && rm -rf libxslt-1.1.32

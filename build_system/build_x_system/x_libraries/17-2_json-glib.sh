#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf json-glib-1.4.2
tar -xvf json-glib-1.4.2.tar.xz
cd json-glib-1.4.2

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf json-glib-1.4.2

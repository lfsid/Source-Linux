#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf pygobject-2.28.7
tar -xvf pygobject-2.28.7.tar.xz
cd pygobject-2.28.7

./configure --prefix=/usr --disable-introspection &&
make -j$(nproc)

make install

cd $src && rm -rf pygobject-2.28.7

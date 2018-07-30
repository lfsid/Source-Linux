#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gtk-doc-1.25
tar -xvf gtk-doc-1.25.tar.xz
cd gtk-doc-1.25

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf gtk-doc-1.25

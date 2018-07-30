#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf clutter-gtk-1.8.4
tar -xvf clutter-gtk-1.8.4.tar.xz
cd clutter-gtk-1.8.4

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf clutter-gtk-1.8.4

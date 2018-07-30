#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gsettings-desktop-schemas-3.24.1
tar -xvf gsettings-desktop-schemas-3.24.1.tar.xz
cd gsettings-desktop-schemas-3.24.1

sed -i -r 's:"(/system):"/org/gnome\1:g' schemas/*.in &&
./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf gsettings-desktop-schemas-3.24.1

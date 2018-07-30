################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf dbus-python-1.2.8
tar -xvzf dbus-python-1.2.8.tar.gz
cd dbus-python-1.2.8

mkdir python2 &&
pushd python2 &&
PYTHON=/usr/bin/python     \
../configure --prefix=/usr --docdir=/usr/share/doc/dbus-python-1.2.8 &&
make &&
popd

mkdir python3 &&
pushd python3 &&
PYTHON=/usr/bin/python3    \
../configure --prefix=/usr --docdir=/usr/share/doc/dbus-python-1.2.8 &&
make &&
popd

make -C python2 install

make -C python3 install

cd $src && rm -rf dbus-python-1.2.8

################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf meson-0.47.1
tar -xvf meson-0.47.1.tar.gz
cd meson-0.47.1

python3 setup.py build

python3 setup.py install --root=dest
cp -rv dest/* /

cd $src && rm -rf meson-4.7.1

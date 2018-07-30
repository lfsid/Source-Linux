################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf MarkupSafe-1.0
tar -xvf MarkupSafe-1.0.tar.gz
cd MarkupSafe-1.0

python3 setup.py build

python3 setup.py install --optimize=1

cd $aa

################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf Beaker-1.9.0
tar -xvf Beaker-1.9.0.tar.gz
cd Beaker-1.9.0

python3 setup.py install --optimize=1

cd $aa

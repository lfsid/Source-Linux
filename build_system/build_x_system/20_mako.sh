################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf Mako-1.0.4
tar -xvf Mako-1.0.4.tar.gz
cd Mako-1.0.4

sed -i "s:mako-render:&3:g" setup.py &&
python3 setup.py install --optimize=1

cd $aa

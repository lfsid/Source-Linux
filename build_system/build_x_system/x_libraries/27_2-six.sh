#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf six-1.11.0
tar -xvzf six-1.11.0.tar.gz
cd six-1.11.0

python2 setup.py build
python2 setup.py install --optimize=1
python3 setup.py build
python3 setup.py install --optimize=1
#make -j$(nproc)
#make install

cd $src && rm -rf six-1.11.0

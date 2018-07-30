#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf pycairo-1.16.2
tar -xvzf pycairo-1.16.2.tar.gz
cd pycairo-1.16.2

python2 setup.py build
python2 setup.py install --optimize=1
python3 setup.py build
python3 setup.py install --optimize=1
#make -j$(nproc)
#make install

cd $src && rm -rf pycairo-1.16.2

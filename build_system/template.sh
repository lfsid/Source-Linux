################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf 
tar -xvf 
cd 



make -j$(nproc)

make install

cd $src && rm -rf 

#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf bash-4.4.18
tar -xvf bash-4.4.18.tar.gz
cd bash-4.4.18

./configure --prefix=/tools --without-bash-malloc

make -j$(nproc)
make install

ln -sv bash /tools/bin/sh

cd $src && rm -rf bash-4.4.18


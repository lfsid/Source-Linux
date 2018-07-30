#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf groff-1.22.3
tar -xvf groff-1.22.3.tar.gz
cd groff-1.22.3

./configure --prefix=/usr

make -j1

make -j1 install

ln -s soelim /usr/bin/zsoelim
ln -s eqn /usr/bin/geqn
ln -s tbl /usr/bin/gtbl

cd $src && rm -rf groff-1.22.3


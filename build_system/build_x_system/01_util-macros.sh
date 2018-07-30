################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf util-macros-1.19.1
tar -xvjf util-macros-1.19.1.tar.bz2
cd util-macros-1.19.1

./configure $XORG_CONFIG

make install

cd $aa

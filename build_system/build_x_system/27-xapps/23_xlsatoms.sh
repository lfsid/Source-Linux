################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xlsatoms-1.1.2
tar -xvjf xlsatoms-1.1.2.tar.bz2
cd xlsatoms-1.1.2

./configure $XORG_CONFIG

make -j$(nproc)

make install



################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xrefresh-1.0.5
tar -xvjf xrefresh-1.0.5.tar.bz2
cd xrefresh-1.0.5

./configure $XORG_CONFIG

make -j$(nproc)

make install



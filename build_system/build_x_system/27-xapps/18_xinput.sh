################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xinput-1.6.2
tar -xvjf xinput-1.6.2.tar.bz2
cd xinput-1.6.2

./configure $XORG_CONFIG

make -j$(nproc)

make install



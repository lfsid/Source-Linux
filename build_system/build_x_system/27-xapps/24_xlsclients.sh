################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xlsclients-1.1.3
tar -xvjf xlsclients-1.1.3.tar.bz2
cd xlsclients-1.1.3

./configure $XORG_CONFIG

make -j$(nproc)

make install



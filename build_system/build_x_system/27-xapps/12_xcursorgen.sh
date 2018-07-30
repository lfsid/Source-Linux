################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xcursorgen-1.0.6
tar -xvjf xcursorgen-1.0.6.tar.bz2
cd xcursorgen-1.0.6

./configure $XORG_CONFIG

make -j$(nproc)

make install



################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-input-synaptics-1.9.0
tar -xvjf xf86-input-synaptics-1.9.0.tar.bz2
cd xf86-input-synaptics-1.9.0

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

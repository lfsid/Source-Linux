################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xcursor-themes-1.0.4
tar -xvjf xcursor-themes-1.0.4.tar.bz2
cd xcursor-themes-1.0.4

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

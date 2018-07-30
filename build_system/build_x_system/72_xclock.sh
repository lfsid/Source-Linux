################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xclock-1.0.7
tar -xvjf xclock-1.0.7.tar.bz2
cd xclock-1.0.7

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

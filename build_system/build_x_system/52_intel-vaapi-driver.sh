################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf intel-vaapi-driver-1.8.3
tar -xvjf intel-vaapi-driver-1.8.3.tar.bz2
cd intel-vaapi-driver-1.8.3

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

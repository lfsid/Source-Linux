################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xbacklight-1.2.1
tar -xvjf xbacklight-1.2.1.tar.bz2
cd xbacklight-1.2.1

./configure $XORG_CONFIG

make -j$(nproc)

make install



################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xmessage-1.0.4
tar -xvjf xmessage-1.0.4.tar.bz2
cd xmessage-1.0.4

./configure $XORG_CONFIG

make -j$(nproc)

make install



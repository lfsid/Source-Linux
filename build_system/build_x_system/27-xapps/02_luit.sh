################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf luit-1.1.1
tar -xvjf luit-1.1.1.tar.bz2
cd luit-1.1.1

sed -i -e "/D_XOPEN/s/5/6/" configure

./configure $XORG_CONFIG

make -j$(nproc)

make install



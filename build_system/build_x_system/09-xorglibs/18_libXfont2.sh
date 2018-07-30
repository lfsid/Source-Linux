######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf libXfont2-2.0.1
tar -xvjf libXfont2-2.0.1.tar.bz2
cd libXfont2-2.0.1

./configure $XORG_CONFIG --disable-devel-docs

make -j$(nproc)
make install
/sbin/ldconfig





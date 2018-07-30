################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libXdmcp-1.1.2
tar -xvjf libXdmcp-1.1.2.tar.bz2
cd libXdmcp-1.1.2

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

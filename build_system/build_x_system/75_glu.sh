#####################################################################
#
#####################################################################
. ./config3.sh

cd $src
rm -rf glu-9.0.0
tar -xvjf glu-9.0.0.tar.bz2
cd glu-9.0.0

./configure --prefix=$XORG_PREFIX --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf glu-9.0.0

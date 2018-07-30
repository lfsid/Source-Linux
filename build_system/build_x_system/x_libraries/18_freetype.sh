#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf freetype-2.9
tar -xvjf freetype-2.9.tar.bz2
cd freetype-2.9

sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg &&

sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h  &&

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf freetype-2.9

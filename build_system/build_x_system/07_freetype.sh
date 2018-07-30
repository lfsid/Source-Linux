################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf freetype-2.8
tar -xvjf freetype-2.8.tar.bz2
cd freetype-2.8

sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg &&

sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h  &&

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install


cd $aa

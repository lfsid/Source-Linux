#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf freeglut-3.0.0
tar -xvf freeglut-3.0.0.tar.gz
cd freeglut-3.0.0

mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr      \
      -DCMAKE_BUILD_TYPE=Release       \
      -DFREEGLUT_BUILD_DEMOS=OFF       \
      -DFREEGLUT_BUILD_STATIC_LIBS=OFF \
      .. &&
make -j$(nproc)

make install

cd $src && rm -rf freeglut-3.0.0

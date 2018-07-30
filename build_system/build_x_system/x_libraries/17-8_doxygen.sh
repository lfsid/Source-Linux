#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf doxygen-1.8.14
tar -xvzf doxygen-1.8.14.src.tar.gz
cd doxygen-1.8.14

mkdir -v build &&
cd       build &&

cmake -G "Unix Makefiles"         \
      -DCMAKE_BUILD_TYPE=Release  \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -Wno-dev .. &&
make -j$(nproc)

make install

cd $src && rm -rf doxygen-1.8.14

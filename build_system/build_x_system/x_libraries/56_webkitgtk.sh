#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf webkitgtk-2.18.6
tar -xvf webkitgtk-2.18.6.tar.xz
cd webkitgtk-2.18.6

mkdir -vp build &&
cd        build &&

CFLAGS=-Wno-expansion-to-defined  \
CXXFLAGS=-Wno-expansion-to-defined \
cmake -DCMAKE_BUILD_TYPE=Release  \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_SKIP_RPATH=ON       \
      -DPORT=GTK                  \
      -DLIB_INSTALL_DIR=/usr/lib  \
      -DUSE_LIBHYPHEN=OFF         \
      -DENABLE_MINIBROWSER=ON     \
      -Wno-dev .. &&
make -j$(nproc)

make install

cd $src && rm -rf webkitgtk-2.18.6

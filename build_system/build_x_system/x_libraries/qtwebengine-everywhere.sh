#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf qtwebengine-everywhere-src-5.10.1
tar -xvf qtwebengine-everywhere-src-5.10.1.tar.xz
cd qtwebengine-everywhere-src-5.10.1

mkdir build &&
cd    build &&

qmake ..    &&
make -j$(nproc)

make install

find $QT5DIR/ -name \*.prl \
   -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' {} \;

cd $src && rm -rf qtwebengine-everywhere-src-5.10.1

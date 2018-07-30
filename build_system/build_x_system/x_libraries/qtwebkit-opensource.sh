#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf qtwebkit-opensource-src-5.9.0
tar -xvf qtwebkit-opensource-src-5.9.0.tar.xz
cd qtwebkit-opensource-src-5.9.0

patch -Np1 -i ../qtwebkit-5.9.0-icu_59-1.patch

sed -e '/CONFIG/a QMAKE_CXXFLAGS += -Wno-expansion-to-defined' \
    -i Tools/qmake/mkspecs/features/unix/default_pre.prf

mkdir -p build        &&
cd       build        &&

qmake ../WebKit.pro   &&
make -j$(nproc)

make install

find $QT5DIR/ -name \*.prl \
   -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' {} \;

cd $src && rm -rf qtwebkit-opensource-src-5.9.0

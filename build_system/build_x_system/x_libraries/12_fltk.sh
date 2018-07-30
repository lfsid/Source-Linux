#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf fltk-1.3.4
tar -xvf fltk-1.3.4-source.tar.gz
cd fltk-1.3.4

sed -i -e '/cat./d' documentation/Makefile       &&

./configure --prefix=/usr    \
            --enable-shared  &&
make -j$(nproc)

make install

cd $src && rm -rf fltk-1.3.4

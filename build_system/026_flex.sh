#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf flex-2.6.4
tar -xvf flex-2.6.4.tar.gz
cd flex-2.6.4

sed -i "/math.h/a #include <malloc.h>" src/flexdef.h

HELP2MAN=/tools/bin/true \
./configure --prefix=/usr --docdir=/usr/share/doc/flex-2.6.4



make -j$(nproc)
make install

ln -sv flex /usr/bin/lex

cd $src && rm -rf flex-2.6.4


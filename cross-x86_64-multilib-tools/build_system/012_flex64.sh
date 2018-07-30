################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf flex-2.6.4
tar -xvzf flex-2.6.4.tar.gz
cd flex-2.6.4

CC="gcc ${BUILD64}" ./configure \
    --prefix=/usr \
    --libdir=/usr/lib64 \
    --docdir=/usr/share/doc/flex-2.6.4

make -j$(nproc)

make install

ln -sv flex /usr/bin/lex

cd $src && rm -rf flex-2.6.4

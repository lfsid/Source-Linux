#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf enchant-2.2.3
tar -xvzf enchant-2.2.3.tar.gz
cd enchant-2.2.3

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install    &&
rm -rf /usr/include/enchant                    &&
ln -sfv enchant-2       /usr/include/enchant   &&
ln -sfv enchant-2       /usr/bin/enchant       &&
ln -sfv libenchant-2.so /usr/lib/libenchant.so &&
ln -sfv enchant-2.pc    /usr/lib/pkgconfig/enchant.pc

cd $src && rm -rf enchant-2.2.3

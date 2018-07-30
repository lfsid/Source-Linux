#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf attr-2.4.48
tar -xvf attr-2.4.48.tar.gz
cd attr-2.4.48

./configure --prefix=/usr \
            --bindir=/bin \
            --disable-static \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.4.48

make -j$(nproc)
make install

mv -v /usr/lib/libattr.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libattr.so) /usr/lib/libattr.so

cd $src && rm -rf attr-2.4.48


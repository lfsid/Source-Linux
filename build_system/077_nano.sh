#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf nano-2.9.8
tar -xvf nano-2.9.8.tar.xz
cd nano-2.9.8

./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-utf8     \
            --docdir=/usr/share/doc/nano-2.9.8 &&
make -j$(nproc)
make install &&
install -v -m644 doc/{nano.html,sample.nanorc} /usr/share/doc/nano-2.9.8

cd $src && rm -rf nano-2.9.8

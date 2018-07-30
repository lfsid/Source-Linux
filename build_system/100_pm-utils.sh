################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf pm-utils-1.4.1
tar -xvzf pm-utils-1.4.1.tar.gz
cd pm-utils-1.4.1

./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/pm-utils-1.4.1 &&
make -j$(nproc)

make install

install -v -m644 man/*.1 /usr/share/man/man1 &&
install -v -m644 man/*.8 /usr/share/man/man8 &&
ln -sv pm-action.8 /usr/share/man/man8/pm-suspend.8 &&
ln -sv pm-action.8 /usr/share/man/man8/pm-hibernate.8 &&
ln -sv pm-action.8 /usr/share/man/man8/pm-suspend-hybrid.8

cd $src && rm -rf pm-utils-1.4.1

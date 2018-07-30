################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf rsync-3.1.3
tar -xvzf rsync-3.1.3.tar.gz
cd rsync-3.1.3

groupadd -g 48 rsyncd &&
useradd -c "rsyncd Daemon" -d /home/rsync -g rsyncd \
    -s /bin/false -u 48 rsyncd

./configure --prefix=/usr --without-included-zlib &&
make -j$(nproc)

make install

install -v -m755 -d          /usr/share/doc/rsync-3.1.3/api &&
install -v -m644 dox/html/*  /usr/share/doc/rsync-3.1.3/api

cd $src && rm -rf rsync-3.1.3

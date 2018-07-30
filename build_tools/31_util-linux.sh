#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf util-linux-2.32.1
tar -xvf util-linux-2.32.1.tar.xz
cd util-linux-2.32.1

./configure --prefix=/tools                \
            --without-python               \
            --disable-makeinstall-chown    \
            --without-systemdsystemunitdir \
            --without-ncurses              \
            PKG_CONFIG=""
make -j$(nproc)
make install

cd $src && rm -rf util-linux-2.32.1


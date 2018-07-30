#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf gdbm-1.16
tar -xvzf gdbm-1.16.tar.gz
cd gdbm-1.16

./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat
make -j$(nproc)
make install

cd $src && rm -rf gdbm-1.16


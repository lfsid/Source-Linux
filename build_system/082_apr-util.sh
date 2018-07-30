################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf apr-util-1.6.1
tar -xvjf apr-util-1.6.1.tar.bz2
cd apr-util-1.6.1

./configure --prefix=/usr       \
            --with-apr=/usr     \
            --with-gdbm=/usr    \
            --with-openssl=/usr \
            --with-crypto &&
make -j$(nproc)

make install

cd $src && rm -rf apr-util-1.6.1

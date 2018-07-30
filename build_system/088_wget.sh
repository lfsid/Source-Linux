################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf wget-1.19.5
tar -xvzf wget-1.19.5.tar.gz
cd wget-1.19.5

./configure --prefix=/usr      \
            --sysconfdir=/etc  \
            --with-ssl=openssl &&
make -j$(nproc)

make install

cd $src && rm -rf wget-1.19.5

#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf openssl-1.1.0h
tar -xvf openssl-1.1.0h.tar.gz
cd openssl-1.1.0h

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic &&
make -j$(nproc)

make MANSUFFIX=ssl install           &&
mv -v /usr/share/doc/openssl{,-1.1.0h} &&
cp -vfr doc/* /usr/share/doc/openssl-1.1.0h

cd $src && rm -rf openssl-1.1.0h


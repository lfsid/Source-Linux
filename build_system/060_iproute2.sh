#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf iproute2-4.17.0
tar -xvf iproute2-4.17.0.tar.xz
cd iproute2-4.17.0

./configure --prefix=/usr      \
            --sbindir=/sbin    \
            --disable-nftables \
            --enable-libipq    \
            --with-xtlibdir=/lib/xtables &&
make -j$(nproc)

make install &&
ln -sfv ../../sbin/xtables-multi /usr/bin/iptables-xml &&

for file in ip4tc ip6tc ipq iptc xtables
do
  mv -v /usr/lib/lib${file}.so.* /lib &&
  ln -sfv ../../lib/$(readlink /usr/lib/lib${file}.so) /usr/lib/lib${file}.so
done

cd $src && rm -rf iproute2-4.17.0


################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf iptables-1.6.2
tar -xvjf iptables-1.6.2.tar.bz2
cd iptables-1.6.2

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

cd $src
rm -rf blfs-bootscripts-20180105
tar -xvf blfs-bootscripts-20180105.tar.xz
cd blfs-bootscripts-20180105

make install-iptables

cd $src && rm -rf iptables-1.6.2 blfs-bootscripts-20180105

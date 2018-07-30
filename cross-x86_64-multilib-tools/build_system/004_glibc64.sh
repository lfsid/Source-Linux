################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf glibc-2.25
tar -xvf glibc-2.25.tar.xz
cd glibc-2.25

LINKER=$(readelf -l /tools/bin/bash | sed -n 's@.*interpret.*/tools\(.*\)]$@\1@p')
sed -i "s|libs -o|libs -L/usr/lib64 -Wl,-dynamic-linker=${LINKER} -o|" \
  scripts/test-installation.pl
unset LINKER

mkdir -v glibc64-build
cd       glibc64-build

echo "libc_cv_slibdir=/lib64" >> config.cache

CC="gcc ${BUILD64}" CXX="g++ ${BUILD64}" \
../glibc-2.25/configure \
    --prefix=/usr \
    --enable-kernel=3.12.0 \
    --libexecdir=/usr/lib64/glibc \
    --libdir=/usr/lib64 \
    --enable-obsolete-rpc \
    --enable-stack-protector=strong \
    --cache-file=config.cache

make -j$(nproc)

make -j$(nproc) install &&
rm -v /usr/include/rpcsvc/*.x

cp -v ../glibc-2.25/nscd/nscd.conf /etc/nscd.conf
mkdir -pv /var/cache/nscd

mkdir -pv /usr/lib/locale

localedef -i en_US -f ISO-8859-1 en_US

cat > /etc/nsswitch.conf << "EOF"
# Begin /etc/nsswitch.conf

passwd: files
group: files
shadow: files

hosts: files dns
networks: files

protocols: files
services: files
ethers: files
rpc: files

# End /etc/nsswitch.conf
EOF

tar -xf ../tzdata2017b.tar.gz

ZONEINFO=/usr/share/zoneinfo
mkdir -pv $ZONEINFO/{posix,right}

for tz in etcetera southamerica northamerica europe africa antarctica \
          asia australasia backward pacificnew systemv; do
    zic -L /dev/null   -d $ZONEINFO       -y "sh yearistype.sh" ${tz}
    zic -L /dev/null   -d $ZONEINFO/posix -y "sh yearistype.sh" ${tz}
    zic -L leapseconds -d $ZONEINFO/right -y "sh yearistype.sh" ${tz}
done

cp -v zone.tab zone1970.tab iso3166.tab $ZONEINFO
zic -d $ZONEINFO -p America/New_York
unset ZONEINFO

tzselect

cp -v /usr/share/zoneinfo/America/New_York \
    /etc/localtime

cat > /etc/ld.so.conf << "EOF"
# Begin /etc/ld.so.conf

/usr/local/lib
/usr/local/lib64
/opt/lib
/opt/lib64

# End /etc/ld.so.conf
EOF

cd $src && rm -rf glibc-2.25 glibc64-build

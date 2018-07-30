################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf glibc-2.25
tar -xvf glibc-2.25.tar.xz
cd glibc-2.25

LINKER=$(readelf -l /tools/bin/bash | sed -n 's@.*interpret.*/tools\(.*\)]$@\1@p')
sed -i "s|libs -o|libs -L/usr/lib -Wl,-dynamic-linker=${LINKER} -o|" \
  scripts/test-installation.pl
unset LINKER

cd $src
mkdir -v glibc32-build
cd       glibc32-build

CC="gcc ${BUILD32}" CXX="g++ ${BUILD32}" \
../glibc-2.25/configure \
    --prefix=/usr \
    --enable-kernel=3.12.0 \
    --libexecdir=/usr/lib/glibc \
    --host=${LFS_TARGET32} \
    --enable-stack-protector=strong \
    --enable-obsolete-rpc

make -j$(nproc)

sed -i '/cross-compiling/s@ifeq@ifneq@g' ../glibc-2.25/localedata/Makefile

touch /etc/ld.so.conf

make -j$(nproc) install &&
rm -v /usr/include/rpcsvc/*.x

cd $src && rm -rf glibc-2.25 glibc32-build

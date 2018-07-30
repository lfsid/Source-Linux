#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf gcc-8.2.0
tar -xvf gcc-8.2.0.tar.xz
cd gcc-8.2.0

case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
  ;;
esac

rm -f /usr/lib/gcc

cd $src
rm -rf gcc-build
mkdir -v gcc-build && cd gcc-build

SED=sed                               \
../gcc-8.2.0/configure --prefix=/usr            \
             --enable-languages=c,c++ \
             --disable-multilib       \
             --disable-bootstrap      \
             --with-system-zlib

make -j$(nproc)

make install

ln -sv ../usr/bin/cpp /lib

ln -sv gcc /usr/bin/cc

install -v -dm755 /usr/lib/bfd-plugins
ln -sfv ../../libexec/gcc/$(gcc -dumpmachine)/8.2.0/liblto_plugin.so \
        /usr/lib/bfd-plugins/

mkdir -pv /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib/*gdb.py /usr/share/gdb/auto-load/usr/lib

cd $src && rm -rf gcc-8.2.0 gcc-build


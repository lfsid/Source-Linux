##########################################################################
#
##########################################################################
. ./config.sh

cd $src
rm -rf gcc-8.2.0
tar -xvf gcc-8.2.0.tar.xz
cd gcc-8.2.0
tar -xvf ../mpfr-4.0.1.tar.xz
mv -v mpfr-4.0.1 mpfr
tar -xvf ../gmp-6.1.2.tar.xz
mv -v gmp-6.1.2 gmp
tar -xvf ../mpc-1.1.0.tar.gz
mv -v mpc-1.1.0 mpc

cat gcc/limitx.h gcc/glimits.h gcc/limity.h > \
  `dirname $($LFS_TGT-gcc -print-libgcc-file-name)`/include-fixed/limits.h

for file in gcc/config/{linux,i386/linux{,64}}.h
do
  cp -uv $file{,.orig}
  sed -e 's@/lib\(64\)\?\(32\)\?/ld@/tools&@g' \
      -e 's@/usr@/tools@g' $file.orig > $file
  echo '
#undef STANDARD_STARTFILE_PREFIX_1
#undef STANDARD_STARTFILE_PREFIX_2
#define STANDARD_STARTFILE_PREFIX_1 "/tools/lib/"
#define STANDARD_STARTFILE_PREFIX_2 ""' >> $file
  touch $file.orig
done

case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
  ;;
esac

cd ..
rm -rf gcc-build
mkdir -v gcc-build && cd gcc-build

CC=$LFS_TGT-gcc                                    \
CXX=$LFS_TGT-g++                                   \
AR=$LFS_TGT-ar                                     \
RANLIB=$LFS_TGT-ranlib                             \
../gcc-8.2.0/configure                             \
    --prefix=/tools                                \
    --with-local-prefix=/tools                     \
    --with-native-system-header-dir=/tools/include \
    --enable-languages=c,c++                       \
    --disable-libstdcxx-pch                        \
    --disable-multilib                             \
    --disable-bootstrap                            \
    --disable-libgomp

make -j$(nproc)
make install
ln -sv gcc /tools/bin/cc

cd $src && rm -rf gcc-8.2.0 gcc-build


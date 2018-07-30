################################################################################
#
################################################################################
. ./config.sh

cd $src
rm -rf binutils-2.31.1
tar -xvf binutils-2.31.1.tar.xz
cd binutils-2.31.1
mkdir -v build && cd build

case $(uname -m) in
  x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
esac

../configure --prefix=/tools               \
             --with-sysroot=$LFS           \
             --with-lib-path=/tools/lib    \
             --target=$LFS_TGT             \
             --disable-nls                 \
             --disable-werror

make -j$(nproc)
make install

cd $src && rm -rf binutils-2.31.1

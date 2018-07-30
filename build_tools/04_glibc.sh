#########################################################################
#
#########################################################################
. ./config.sh

cd $src
rm -rf glibc-2.27
tar -xvf glibc-2.27.tar.xz
rm -rf glibc-build
mkdir -v glibc-build && cd glibc-build

../glibc-2.27/configure                  \
      --prefix=/tools                    \
      --host=$LFS_TGT                    \
      --build=$(../scripts/config.guess) \
      --enable-kernel=3.2                \
      --with-headers=/tools/include      \
      libc_cv_forced_unwind=yes          \
      libc_cv_c_cleanup=yes

make -j$(nproc)
make install

cd $src && rm -rf glibc-2.27 glibc-build


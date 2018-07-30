##########################################################################
#
##########################################################################
. ./config.sh

cd $src
rm -rf gcc-8.2.0
tar -xvf gcc-8.2.0.tar.xz

rm -rf build-libstdc++
mkdir -v build-libstdc++ && cd build-libstdc++

../gcc-8.2.0/libstdc++-v3/configure           \
    --host=$LFS_TGT                           \
    --prefix=/tools                           \
    --disable-multilib                        \
    --disable-nls                             \
    --disable-libstdcxx-threads               \
    --disable-libstdcxx-pch                   \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/8.2.0
make -j$(nproc)
make install

cd $src && rm -rf gcc-8.2.0 build-libstdc++


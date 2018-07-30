################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf perl-5.26.0
tar -xvf perl-5.26.0.tar.xz
cd perl-5.26.0

sed -i 's@/usr/include@/tools/include@g' ext/Errno/Errno_pm.PL

./configure.gnu \
    --prefix=/tools \
    -Dcc="gcc ${BUILD32}"

make -j$(nproc)

make install

ln -sfv /tools/bin/perl /usr/bin

cd $src && rm -rf perl-5.26.0

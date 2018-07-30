#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf texinfo-6.3
tar -xvf texinfo-6.3.tar.xz
cd texinfo-6.3

PERL=/usr/bin/perl \
./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET}

make -j$(nproc)
make install

cd $src && rm -rf texinfo-6.3


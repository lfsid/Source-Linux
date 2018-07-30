#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf bzip2-1.0.6
tar -xvzf bzip2-1.0.6.tar.gz
cd bzip2-1.0.6

cp -v Makefile{,.orig}
sed -e 's@^\(all:.*\) test@\1@g' \
    -e 's@/lib\(/\| \|$\)@/lib64\1@g' Makefile.orig > Makefile

make -j$(nproc) CC="${CC}" AR="${AR}" RANLIB="${RANLIB}"

make PREFIX=/tools install

cd $src && rm -rf bzip2-1.0.6


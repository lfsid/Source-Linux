################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf zip30
tar -xvzf zip30.tgz
cd zip30

make -f unix/Makefile generic_gcc

make prefix=/usr MANDIR=/usr/share/man/man1 -f unix/Makefile install

cd $src && rm -rf zip30

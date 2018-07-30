#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf unzip60
tar -xvzf unzip60.tgz
cd unzip60

make -f unix/Makefile generic

make prefix=/usr MANDIR=/usr/share/man/man1 \
 -f unix/Makefile install

cd $aa


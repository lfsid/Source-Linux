################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf yasm-1.3.0
tar -xvf yasm-1.3.0.tar.gz
cd yasm-1.3.0

sed -i 's#) ytasm.*#)#' Makefile.in &&

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $aa

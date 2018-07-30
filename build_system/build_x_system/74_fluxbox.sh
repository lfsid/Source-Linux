################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf fluxbox-1.3.7
tar -xvf fluxbox-1.3.7.tar.xz
cd fluxbox-1.3.7

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $aa

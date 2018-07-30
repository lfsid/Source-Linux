################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf sysvinit-2.90
tar -xvf sysvinit-2.90.tar.xz
cd sysvinit-2.90

patch -Np1 -i ../sysvinit-2.90-consolidated-1.patch

make -C src

make -C src install

cd $src && rm -rf sysvinit-2.90

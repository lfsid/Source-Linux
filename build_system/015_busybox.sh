################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf busybox-1.28.4
tar -xvjf busybox-1.28.4.tar.bz2
cd busybox-1.28.4

make -j$(nproc) distclean

make -j$(nproc) defconfig

make -j$(nproc) busybox

make install

mv busybox /bin

cd $src && rm -rf busybox-1.28.4

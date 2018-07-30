#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf grub-2.02
tar -xvf grub-2.02.tar.xz
cd grub-2.02

./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror

make -j$(nproc)
make install

cd $src && rm -rf grub-2.02


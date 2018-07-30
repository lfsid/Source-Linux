################################################################
#
################################################################
. ./config.sh


cp $LFS/build_system/bzImage $aa/files
rm $aa/files/initramfs.img.gz

mv $LFS/source $aa/files
mv $LFS/tools $aa/files
cd $LFS
#Packs  current 'initramfs' folder structure in 'cpio.xz' archive.
find . | cpio -H newc -ov | gzip -9 > $aa/files/initramfs.img.gz

rm -rf $iso && mkdir $iso

mkdir $iso/boot
cp $aa/files/bzImage $iso/boot
cp $aa/files/initramfs.img.gz $iso/boot/

cp -r $aa/boot/bios/* $iso

rm -rf $aa/files/syslinux
mkdir $aa/files/syslinux && cd $aa/files/syslinux
wget http://kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.tar.xz

tar -xvf syslinux-6.03.tar.xz
cd syslinux-6.03

mkdir $iso/boot/syslinux

cp $aa/files/boot/bios/boot/syslinux/syslinux.cfg $iso/boot/syslinux

cp bios/core/isolinux.bin $iso/boot/syslinux

cp bios/com32/elflink/ldlinux/ldlinux.c32 $iso/boot/syslinux


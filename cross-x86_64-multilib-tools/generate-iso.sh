################################################################
#
################################################################
. ./config.sh

cd $iso

  # Now we generate 'hybrid' ISO image file which can also be used on
  # USB flash drive, e.g. 'dd if=minimal_linux_live.iso of=/dev/sdb'.
  xorriso -as mkisofs \
    -isohybrid-mbr $aa/files/syslinux/syslinux-6.03/bios/mbr/isohdpfx.bin \
    -c boot/syslinux/boot.cat \
    -b boot/syslinux/isolinux.bin \
      -no-emul-boot \
      -boot-load-size 4 \
      -boot-info-table \
    -o $aa/noob_linux.iso \
    $iso

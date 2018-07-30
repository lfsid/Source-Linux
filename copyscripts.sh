################################################################
#
################################################################
. ./config.sh

cd $aa
#rm -rf $LFS/build_system
cp -r build_system $LFS

mkdir $LFS/etc
mkdir $LFS/root

cp /etc/resolv.conf $LFS/etc/
cp /etc/resolv.conf $LFS/tools/etc/

cp $aa/files/init $LFS
chmod 777 $LFS/init

#cp $aa/files/.bashrc $LFS/root/
#cp $aa/files/nanorc $LFS/etc/
#cp $aa/files/motd $LFS/etc/



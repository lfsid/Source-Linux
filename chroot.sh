#####################################################################
#
#####################################################################
. ./config.sh


mv $aa/files/source $LFS
mv $aa/files/tools $LFS

mkdir -pv $LFS/{dev,proc,sys,run}
mknod -m 600 $LFS/dev/console c 5 1
mknod -m 666 $LFS/dev/null c 1 3

mount -v --bind /dev $LFS/dev
mount -vt devpts devpts $LFS/dev/pts -o gid=5,mode=620
mount -vt proc proc $LFS/proc
mount -vt sysfs sysfs $LFS/sys
mount -vt tmpfs tmpfs $LFS/run

if [ -h $LFS/dev/shm ]; then
  mkdir -pv $LFS/$(readlink $LFS/dev/shm)
fi

mkdir $LFS/etc
cp /etc/resolv.conf $LFS/etc
cp /etc/resolv.conf $LFS/tools/etc

chroot "$LFS" /tools/bin/env -i \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='\[\033[1;36m\][\[\033[0;31m\]chroot\[\033[1;36m\]-\[\033[0;36m\]\h\[\033[1;36m\]]\[\033[0;31m\]\W\[\033[0;36m\] \$\[\033[0;31m\]:\[\033[1;00m\] ' \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin \
    /tools/bin/bash --login +h \

exit




mkdir -pv /{bin,boot,dev,{etc/,}opt,home,lib{,64},mnt}
mkdir -pv /{proc,media/{floppy,cdrom},run/{,shm},sbin,srv,sys}
mkdir -pv /var/{lock,log,mail,spool}
mkdir -pv /var/{opt,cache,lib{,64}/{misc,locate},local}
install -dv /root -m 0750
install -dv {/var,}/tmp -m 1777
ln -sv ../run /var/run
mkdir -pv /usr/{,local/}{bin,include,lib{,64},sbin,src}
mkdir -pv /usr/{,local/}share/{doc,info,locale,man}
mkdir -pv /usr/{,local/}share/{misc,terminfo,zoneinfo}
mkdir -pv /usr/{,local/}share/man/man{1..8}
install -dv /usr/lib/locale
ln -sv ../lib/locale /usr/lib64

ln -sv /tools/bin/{bash,cat,echo,grep,pwd,stty} /bin
ln -sv /tools/bin/file /usr/bin
ln -sv /tools/lib/libgcc_s.so{,.1} /usr/lib
ln -sv /tools/lib64/libgcc_s.so{,.1} /usr/lib64
ln -sv /tools/lib/libstd* /usr/lib
ln -sv /tools/lib64/libstd* /usr/lib64
ln -sv bash /bin/sh

cat > /etc/passwd << "EOF"
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:/bin:/bin/false
daemon:x:2:6:/sbin:/bin/false
messagebus:x:27:27:D-Bus Message Daemon User:/dev/null:/bin/false
nobody:x:65534:65533:Unprivileged User:/dev/null:/bin/false
EOF

cat > /etc/group << "EOF"
root:x:0:
bin:x:1:
sys:x:2:
kmem:x:3:
tty:x:5:
tape:x:4:
daemon:x:6:
floppy:x:7:
disk:x:8:
lp:x:9:
dialout:x:10:
audio:x:11:
video:x:12:
utmp:x:13:
usb:x:14:
cdrom:x:15:
adm:x:16:
messagebus:x:27:
mail:x:30:
wheel:x:39:
nogroup:x:65533:
EOF

touch /var/log/{btmp,faillog,lastlog,wtmp}
chgrp -v utmp /var/log/{faillog,lastlog}
chmod -v 664 /var/log/{faillog,lastlog}
chmod -v 600 /var/log/btmp

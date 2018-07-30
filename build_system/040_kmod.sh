#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf kmod-25
tar -xvf kmod-25.tar.xz
cd kmod-25

./configure --prefix=/usr          \
            --bindir=/bin          \
            --sysconfdir=/etc      \
            --with-rootlibdir=/lib \
            --with-xz              \
            --with-zlib
make -j$(nproc)
make install

for target in depmod insmod lsmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /sbin/$target
done

ln -sfv kmod /bin/lsmod

cd $src && rm -rf kmod-25


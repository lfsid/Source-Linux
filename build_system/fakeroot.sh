#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf fakeroot-1.22/
tar -xvjf fakeroot_1.22.orig.tar.bz2
cd fakeroot-1.22/

./configure --prefix=/usr                   \
            --libdir=/usr/lib/libfakeroot   \
            --with-ipc=sysv

make -j$(nproc)

make install

cat > /etc/ld.so.conf.d/fakeroot.conf << "EOF"
/usr/lib/libfakeroot
EOF

cd $src && rm -rf fakeroot-1.22/


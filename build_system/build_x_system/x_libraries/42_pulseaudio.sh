#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf pulseaudio-11.1
tar -xvf pulseaudio-11.1.tar.xz
cd pulseaudio-11.1

patch -Np1 -i ../pulseaudio-11.1-glibc_2.27_fix-1.patch &&

AUTOPOINT='intltoolize --automake --copy' autoreconf -fiv &&

./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-bluez4     \
            --disable-bluez5     \
            --disable-rpath      &&
make -j$(nproc)

make install

rm -fv /etc/dbus-1/system.d/pulseaudio-system.conf

sed -i '/load-module module-console-kit/s/^/#/' /etc/pulse/default.pa

cd $src && rm -rf pulseaudio-11.1

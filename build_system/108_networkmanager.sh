################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf NetworkManager-1.10.8
tar -xvf NetworkManager-1.10.8.tar.xz
cd NetworkManager-1.10.8

CXXFLAGS="-O2 -fPIC"                       \
./configure --prefix=/usr                  \
            --sysconfdir=/etc              \
            --localstatedir=/var           \
            --with-nmtui                   \
            --disable-ppp                  \
            --disable-json-validation      \
            --disable-ovs                  \
            --with-udev-dir=/lib/udev      \
            --with-systemdsystemunitdir=no \
            --docdir=/usr/share/doc/network-manager-1.10.8 &&
make -j$(nproc)

make install

mkdir /etc/NetworkManager
cat >> /etc/NetworkManager/NetworkManager.conf << "EOF"
[main]
plugins=keyfile
EOF

groupadd -fg 86 netdev &&
/usr/sbin/usermod -a -G netdev root

cat > /usr/share/polkit-1/rules.d/org.freedesktop.NetworkManager.rules << "EOF"
polkit.addRule(function(action, subject) {
    if (action.id.indexOf("org.freedesktop.NetworkManager.") == 0 && subject.isInGroup("netdev")) {
        return polkit.Result.YES;
    }
});
EOF

cd $src
rm -rf blfs-bootscripts-20180105
tar -xvf blfs-bootscripts-20180105.tar.xz
cd blfs-bootscripts-20180105

make install-networkmanager

cd $src && rm -rf NetworkManager-1.10.8 blfs-bootscripts-20180105

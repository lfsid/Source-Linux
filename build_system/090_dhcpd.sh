################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf dhcpcd-7.0.6
tar -xvf dhcpcd-7.0.6.tar.xz
cd dhcpcd-7.0.6

./configure --libexecdir=/lib/dhcpcd \
            --dbdir=/var/lib/dhcpcd  &&
make -j$(nproc)

make install

cat > /etc/sysconfig/ifconfig.eth0 << "EOF"
ONBOOT="yes"
IFACE="eth0"
SERVICE="dhcpcd"
DHCP_START="-b -q -S ip_address=192.168.0.10/24 -S routers=192.168.0.1"
DHCP_STOP="-k"
EOF

cat > /etc/resolv.conf.head << "EOF"
# OpenDNS servers
nameserver 208.67.222.222
nameserver 208.67.220.220
EOF

cd $src && rm -rf dhcpcd-7.0.6 blfs-bootscripts-20180105

################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf bridge-utils-1.6
tar -xvf bridge-utils-1.6.tar.xz
cd bridge-utils-1.6

autoconf                  &&
./configure --prefix=/usr &&
make -j$(nproc)

make install

cat > /etc/sysconfig/ifconfig.br0 << "EOF"
ONBOOT=yes
IFACE=br0
SERVICE="bridge ipv4-static"  # Space separated
IP=192.168.1.32
GATEWAY=192.168.1.1
PREFIX=24
BROADCAST=192.168.1.255
CHECK_LINK=no                 # Don't check before bridge is created
STP=no                        # Spanning tree protocol, default no
INTERFACE_COMPONENTS="eth0"   # Add to IFACE, space separated devices
IP_FORWARD=true
EOF


cd $src && rm -rf bridge-utils-1.6

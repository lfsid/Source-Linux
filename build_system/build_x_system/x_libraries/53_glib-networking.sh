#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf glib-networking-2.54.1
tar -xvf glib-networking-2.54.1.tar.xz
cd glib-networking-2.54.1

./configure --prefix=/usr             \
            --without-ca-certificates \
            --disable-static          &&
make -j$(nproc)

make install

cat > /etc/profile.d/gio.sh << "EOF"
# Begin gio.sh

export GIO_USE_TLS=gnutls-pkcs11

# End gio.sh
EOF

cd $src && rm -rf glib-networking-2.54.1

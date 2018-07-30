#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf p11-kit-0.23.9
tar -xvzf p11-kit-0.23.9.tar.gz
cd p11-kit-0.23.9

./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --with-trust-paths=/etc/pki/anchors &&
make -j$(nproc)

make install

if [ -e /usr/lib/libnssckbi.so ]; then
  readlink /usr/lib/libnssckbi.so ||
  rm -v /usr/lib/libnssckbi.so    &&
  ln -sfv ./pkcs11/p11-kit-trust.so /usr/lib/libnssckbi.so
fi

cd $src && rm -rf p11-kit-0.23.9

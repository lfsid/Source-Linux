#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gnutls-3.6.2
tar -xvf gnutls-3.6.2.tar.xz
cd gnutls-3.6.2

./configure --prefix=/usr \
            --with-default-trust-store-pkcs11="pkcs11:" \
	    --with-included-unistring      \
	    --with-included-libtasn1   &&
make -j$(nproc)

make install

cd $src && rm -rf gnutls-3.6.2

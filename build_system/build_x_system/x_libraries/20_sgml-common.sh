#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf sgml-common-0.6.3
tar -xvzf sgml-common-0.6.3.tgz
cd sgml-common-0.6.3

patch -Np1 -i ../sgml-common-0.6.3-manpage-1.patch &&
autoreconf -f -i

./configure --prefix=/usr --sysconfdir=/etc &&
make -j$(nproc)

make install

cd $src && rm -rf sgml-common-0.6.3

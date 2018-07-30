#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gtk-vnc-0.7.1
tar -xvf gtk-vnc-0.7.1.tar.xz
cd gtk-vnc-0.7.1

./configure --prefix=/usr  \
            --with-gtk=3.0 \
            --enable-vala  \
            --without-sasl &&
make -j$(nproc)

make install

cd $src && rm -rf gtk-vnc-0.7.1

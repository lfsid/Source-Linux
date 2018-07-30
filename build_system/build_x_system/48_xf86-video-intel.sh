################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-video-intel-20170826
tar -xvf xf86-video-intel-20170826.tar.xz
cd xf86-video-intel-20170826

./configure $XORG_CONFIG      \
            --enable-kms-only \
            --enable-uxa      \
            --mandir=/usr/share/man &&
make -j$(nproc)

make install

cd $aa

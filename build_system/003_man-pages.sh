################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf man-pages-4.16
tar -xvf man-pages-4.16.tar.xz
cd man-pages-4.16

make -j$(nproc) install

cd $src && rm -rf man-pages-4.16

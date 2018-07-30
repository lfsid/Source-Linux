################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf man-pages-4.09
tar -xvf man-pages-4.09.tar.xz
cd man-pages-4.09

make -j$(nproc) install

cd $src && rm -rf man-pages-4.09

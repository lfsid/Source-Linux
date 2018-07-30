################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf net-tools-CVS_20101030
tar -xvzf net-tools-CVS_20101030.tar.gz
cd net-tools-CVS_20101030

patch -Np1 -i ../net-tools-CVS_20101030-remove_dups-1.patch &&
sed -i '/#include <netinet\/ip.h>/d'  iptunnel.c &&

yes "" | make config &&
make -j$(nproc)

make update

cd $src && rm -rf net-tools-CVS_20101030

################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf wireless_tools.29
tar -xvzf wireless_tools.29.tar.gz
cd wireless_tools.29

patch -Np1 -i ../wireless_tools-29-fix_iwlist_scanning-1.patch

make -j$(nproc)

make PREFIX=/usr INSTALL_MAN=/usr/share/man install

cd $src && rm -rf wireless_tools.29

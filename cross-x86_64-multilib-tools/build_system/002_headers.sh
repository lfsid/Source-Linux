################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf linux-4.9
tar -xvf linux-4.9.tar.xz
cd linux-4.9

xzcat ../patch-4.9.21.xz | patch -Np1 -i -

make mrproper
make headers_check
make INSTALL_HDR_PATH=/usr headers_install
find /usr/include -name .install -or -name ..install.cmd | xargs rm -fv

cd $src && rm -rf linux-4.9

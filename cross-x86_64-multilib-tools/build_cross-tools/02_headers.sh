#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf linux-4.9
tar -xvf linux-4.9.tar.xz
cd linux-4.9

xzcat ../patch-4.9.21.xz | patch -Np1 -i -

make -j$(nproc) mrproper
make -j$(nproc) ARCH=x86_64 headers_check
make -j$(nproc) ARCH=x86_64 INSTALL_HDR_PATH=/tools headers_install

cd $src && rm -rf linux-4.9


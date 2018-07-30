################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf linux-4.15.3
tar -xvf linux-4.15.3.tar.xz
cd linux-4.15.3

make -j$(nproc) mrproper

make -j$(nproc) defconfig

#make -j$(nproc)

make -j$(nproc) bzImage

cp arch/x86/boot/bzImage /build_system/bzImage

make INSTALL_HDR_PATH=dest headers_install
find dest/include \( -name .install -o -name ..install.cmd \) -delete
cp -rv dest/include/* /usr/include

cd $src && rm -rf linux-4.15.3

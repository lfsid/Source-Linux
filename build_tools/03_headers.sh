################################################################
#
################################################################
. ./config.sh

cd $src
rm -rf linux-4.17.10
tar -xvf linux-4.17.10.tar.xz
cd linux-4.17.10

make mrproper

make -j$(nproc) INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include

cd $src && rm -rf linux-4.17.10

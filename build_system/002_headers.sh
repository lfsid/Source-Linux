################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf linux-4.17.10
tar -xvf linux-4.17.10.tar.xz
cd linux-4.17.10

make -j$(nproc) mrproper

make INSTALL_HDR_PATH=dest headers_install
find dest/include \( -name .install -o -name ..install.cmd \) -delete
cp -rv dest/include/* /usr/include

cd $src && rm -rf linux-4.17.10

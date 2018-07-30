################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libvdpau-va-gl-0.4.0
tar -xvf libvdpau-va-gl-0.4.0.tar.gz
cd libvdpau-va-gl-0.4.0

mkdir build &&
cd    build &&

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$XORG_PREFIX .. &&
make -j$(nproc)

make install

echo "export VDPAU_DRIVER=va_gl" >> /etc/profile.d/xorg.sh

cd $aa

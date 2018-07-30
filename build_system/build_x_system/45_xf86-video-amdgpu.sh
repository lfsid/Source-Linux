################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xf86-video-amdgpu-1.3.0
tar -xvf xf86-video-amdgpu-1.3.0.tar.gz
cd xf86-video-amdgpu-1.3.0

./configure $XORG_CONFIG &&
make -j$(nproc)

make install

cd $aa

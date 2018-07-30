#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf cogl-1.22.2
tar -xvf cogl-1.22.2.tar.xz
cd cogl-1.22.2

sed -i 's/^#if COGL/#ifdef COGL/' cogl/winsys/cogl-winsys-egl.c &&

./configure --prefix=/usr --enable-gles1 --enable-gles2         \
    --enable-{kms,wayland,xlib}-egl-platform                    \
    --enable-wayland-egl-server                                 &&
make -j$(nproc)

make install

cd $src && rm -rf cogl-1.22.2

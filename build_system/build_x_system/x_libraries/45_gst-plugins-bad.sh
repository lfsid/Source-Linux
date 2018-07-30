#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gst-plugins-bad-1.12.4
tar -xvf gst-plugins-bad-1.12.4.tar.xz
cd gst-plugins-bad-1.12.4

./configure --prefix=/usr                                           \
            --disable-wayland                                       \
            --disable-opencv                                        \
            --with-package-name="GStreamer Bad Plugins 1.12.4 BLFS" \
            --with-package-origin="http://www.linuxfromscratch.org/blfs/view/svn/" &&
make -j$(nproc)

make install

cd $src && rm -rf gst-plugins-bad-1.12.4

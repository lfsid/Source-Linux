#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gstreamer-1.12.4
tar -xvf gstreamer-1.12.4.tar.xz
cd gstreamer-1.12.4

./configure --prefix=/usr \
            --with-package-name="GStreamer 1.12.4 BLFS" \
            --with-package-origin="http://www.linuxfromscratch.org/blfs/view/svn/" &&
make -j$(nproc)

make install

cd $src && rm -rf gstreamer-1.12.4

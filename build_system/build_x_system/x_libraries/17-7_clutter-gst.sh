#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf clutter-gst-3.0.24
tar -xvf clutter-gst-3.0.24.tar.xz
cd clutter-gst-3.0.24

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf clutter-gst-3.0.24

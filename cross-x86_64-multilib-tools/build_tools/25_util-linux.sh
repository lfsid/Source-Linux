#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf util-linux-2.29.2
tar -xvf util-linux-2.29.2.tar.xz
cd util-linux-2.29.2

NCURSESW6_CONFIG=" " \
NCURSES6_CONFIG=" " \
NCURSESW5_CONFIG=" " \
NCURSES5_CONFIG=" " \
./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --libdir=/tools/lib64 \
    --disable-makeinstall-chown \
    --disable-makeinstall-setuid \
    --disable-nologin \
    --without-python

make -j$(nproc)
make install

cd $src && rm -rf util-linux-2.29.2


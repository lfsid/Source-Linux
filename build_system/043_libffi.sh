################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf libffi-3.2.1
tar -xvf libffi-3.2.1.tar.gz
cd libffi-3.2.1

sed -e '/^includesdir/ s/$(libdir).*$/$(includedir)/' \
    -i include/Makefile.in &&

sed -e '/^includedir/ s/=.*$/=@includedir@/' \
    -e 's/^Cflags: -I${includedir}/Cflags:/' \
    -i libffi.pc.in        &&

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libffi-3.2.1

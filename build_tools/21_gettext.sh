#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gettext-0.19.8.1
tar -xvf gettext-0.19.8.1.tar.xz
cd gettext-0.19.8.1

sed -i '/^TESTS =/d' gettext-runtime/tests/Makefile.in &&
sed -i 's/test-lock..EXEEXT.//' gettext-tools/gnulib-tests/Makefile.in

./configure --prefix=/tools --disable-static
make -j$(nproc)
make install
chmod -v 0777 /tools/lib/preloadable_libintl.so

cd $src && rm -rf gettext-0.19.8.1


################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf libxcb-1.12
tar -xvjf libxcb-1.12.tar.bz2
cd libxcb-1.12

patch -Np1 -i ../libxcb-1.12-python3-1.patch

sed -i "s/pthread-stubs//" configure &&

./configure $XORG_CONFIG      \
            --enable-xinput   \
            --without-doxygen \
            --docdir='${datadir}'/doc/libxcb-1.12 &&
make -j$(nproc)

make install


cd $aa

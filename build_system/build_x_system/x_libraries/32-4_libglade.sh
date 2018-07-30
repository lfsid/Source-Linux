#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libglade-2.6.4
tar -xvjf libglade-2.6.4.tar.bz2
cd libglade-2.6.4

sed -i '/DG_DISABLE_DEPRECATED/d' glade/Makefile.in &&
./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd $src && rm -rf libglade-2.6.4

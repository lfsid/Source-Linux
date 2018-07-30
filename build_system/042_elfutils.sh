#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf elfutils-0.173
tar -xvjf elfutils-0.173.tar.bz2
cd elfutils-0.173

./configure --prefix=/usr

make -j$(nproc)

make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig

cd $src && rm -rf elfutils-0.173


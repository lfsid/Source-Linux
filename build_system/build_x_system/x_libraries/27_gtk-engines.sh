#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gtk-engines-2.20.2
tar -xvjf gtk-engines-2.20.2.tar.bz2
cd gtk-engines-2.20.2

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf gtk-engines-2.20.2

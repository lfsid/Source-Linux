#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf expat-2.2.5
tar -xvjf expat-2.2.5.tar.bz2
cd expat-2.2.5

sed -i 's|usr/bin/env |bin/|' run.sh.in

./configure --prefix=/usr --disable-static

make -j$(nproc)
make install

cd $src && rm -rf expat-2.2.5


#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf psmisc-23.1
tar -xvf psmisc-23.1.tar.xz
cd psmisc-23.1
./configure --prefix=/usr

make -j$(nproc)
make install

mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin

cd $src && rm -rf psmisc-23.1


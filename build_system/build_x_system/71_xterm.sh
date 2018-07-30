################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf xterm-330
tar -xvf xterm-330.tgz
cd xterm-330

sed -i '/v0/{n;s/new:/new:kb=^?:/}' termcap &&
printf '\tkbs=\\177,\n' >> terminfo &&

TERMINFO=/usr/share/terminfo \
./configure $XORG_CONFIG     \
    --with-app-defaults=/etc/X11/app-defaults &&

make -j$(nproc)

make install &&
make install-ti

cd $aa

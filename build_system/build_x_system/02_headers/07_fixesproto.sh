################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf fixesproto-5.0
tar -xvjf fixesproto-5.0.tar.bz2
cd fixesproto-5.0

./configure $XORG_CONFIG

make install

######################################################
#
######################################################
. ./config.sh

cd $src
rm -rf xtrans-1.3.5
tar -xvjf xtrans-1.3.5.tar.bz2
cd xtrans-1.3.5

./configure $XORG_CONFIG

make -J$(nproc)
make install
/sbin/ldconfig




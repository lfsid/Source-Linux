################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf x11perf-1.6.0
tar -xvjf x11perf-1.6.0.tar.bz2
cd x11perf-1.6.0

./configure $XORG_CONFIG

make -j$(nproc)

make install



#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf iana-etc-2.30
tar -xvjf iana-etc-2.30.tar.bz2
cd iana-etc-2.30

make -j$(nproc)
make install

cd $src && rm -rf iana-etc-2.30


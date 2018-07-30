#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf XML-Parser-2.44
tar -xvf XML-Parser-2.44.tar.gz
cd XML-Parser-2.44

perl Makefile.PL

make -j$(nproc)
make install

cd $src && rm -rf XML-Parser-2.44


#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf shared-mime-info-1.9
tar -xvf shared-mime-info-1.9.tar.xz
cd shared-mime-info-1.9

./configure --prefix=/usr &&
make -j$(nproc)

make install

cd $src && rm -rf shared-mime-info-1.9

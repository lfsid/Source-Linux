#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf texinfo-6.5
tar -xvf texinfo-6.5.tar.xz
cd texinfo-6.5

./configure --prefix=/usr --disable-static

make -j$(nproc)
make install

make TEXMF=/usr/share/texmf install-tex

cd $src && rm -rf texinfo-6.5


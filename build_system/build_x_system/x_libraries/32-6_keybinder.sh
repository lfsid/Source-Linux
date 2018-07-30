#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf keybinder-0.3.0
tar -xvzf keybinder-0.3.0.tar.gz
cd keybinder-0.3.0

./configure --prefix=/usr --disable-lua &&
make -j$(nproc)

make install

cd $src && rm -rf keybinder-0.3.0

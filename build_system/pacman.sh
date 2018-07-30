#####################################################################
#
#####################################################################
. ./config2.sh

cd $src

cd pacman

./autogen.sh

./configure --prefix=/usr     \
            --disable-doc     \
            --disable-shared  \
            --sysconfdir=/etc \
            --localstatedir=/var

make -j$(nproc)

make install

#cd $src && rm -rf pacman/


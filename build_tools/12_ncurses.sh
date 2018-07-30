#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf ncurses-6.1
tar -xvf ncurses-6.1.tar.gz
cd ncurses-6.1

sed -i s/mawk// configure

./configure --prefix=/tools \
            --with-shared   \
            --without-debug \
            --without-ada   \
            --enable-widec  \
            --enable-overwrite

make -j$(nproc)
make install

cd $src && rm -rf ncurses-6.1


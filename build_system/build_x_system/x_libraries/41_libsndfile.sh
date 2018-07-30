#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf libsndfile-1.0.28
tar -xvzf libsndfile-1.0.28.tar.gz
cd libsndfile-1.0.28

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libsndfile-1.0.28 &&
make -j$(nproc)

make install

cd $src && rm -rf libsndfile-1.0.28

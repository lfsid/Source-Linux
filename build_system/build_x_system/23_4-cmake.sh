################################################################
#
################################################################

cd /source
rm -rf cmake-3.11.0
tar -xvzf cmake-3.11.0.tar.gz
cd cmake-3.11.0

sed -i '/"lib64"/s/64//' Modules/GNUInstallDirs.cmake &&

./bootstrap --prefix=/usr        \
            --system-libs        \
            --mandir=/share/man  \
            --no-system-jsoncpp  \
            --no-system-librhash \
            --docdir=/share/doc/cmake-3.11.0 &&
make -j$(nproc)

make install

cd /source && rm -rf cmake-3.11.0

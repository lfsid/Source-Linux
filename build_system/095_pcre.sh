################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf pcre-8.42
tar -xvjf pcre-8.42.tar.bz2
cd pcre-8.42

./configure --prefix=/usr                     \
            --docdir=/usr/share/doc/pcre-8.42 \
            --enable-unicode-properties       \
            --enable-pcre16                   \
            --enable-pcre32                   \
            --enable-pcregrep-libz            \
            --enable-pcregrep-libbz2          \
            --enable-pcretest-libreadline     \
            --disable-static                 &&
make -j$(nproc)

make install                     &&
mv -v /usr/lib/libpcre.so.* /lib &&
ln -sfv ../../lib/$(readlink /usr/lib/libpcre.so) /usr/lib/libpcre.so

cd $src && rm -rf pcre-8.42

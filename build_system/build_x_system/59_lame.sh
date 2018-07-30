################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf lame-3.100
tar -xvf lame-3.100.tar.gz
cd lame-3.100

case $(uname -m) in
   i?86) sed -i -e '/xmmintrin\.h/d' configure ;;
esac

./configure --prefix=/usr --enable-mp3rtp --disable-static &&
make -j$(nproc)

make install

cd $aa

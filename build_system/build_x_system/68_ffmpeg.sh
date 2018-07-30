################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf ffmpeg-3.3.3
tar -xvf ffmpeg-3.3.3.tar.xz
cd ffmpeg-3.3.3

sed -i 's/-lflite"/-lflite -lasound"/' configure &&

./configure --prefix=/usr        \
            --enable-gpl         \
            --enable-version3    \
            --enable-nonfree     \
            --disable-static     \
            --enable-shared      \
            --disable-debug      \
            --enable-libass      \
            --enable-libfdk-aac  \
            --enable-libfreetype \
            --enable-libmp3lame  \
            --enable-libopus     \
            --enable-libtheora   \
            --enable-libvorbis   \
            --enable-libvpx      \
            --enable-libx264     \
            --enable-libx265     \
            --docdir=/usr/share/doc/ffmpeg-3.3.3 &&
make -j$(nproc) &&

gcc tools/qt-faststart.c -o tools/qt-faststart

make install &&

install -v -m755    tools/qt-faststart /usr/bin

cd $aa

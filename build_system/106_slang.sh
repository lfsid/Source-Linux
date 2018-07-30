################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf slang-2.3.2
tar -xvjf slang-2.3.2.tar.bz2
cd slang-2.3.2

./configure --prefix=/usr \
            --sysconfdir=/etc \
            --with-readline=gnu &&
make -j$(nproc)

make install_doc_dir=/usr/share/doc/slang-2.3.2   \
     SLSH_DOC_DIR=/usr/share/doc/slang-2.3.2/slsh \
     install-all &&

chmod -v 755 /usr/lib/libslang.so.2.3.2 \
             /usr/lib/slang/v2/modules/*.so

cd $src && rm -rf slang-2.3.2

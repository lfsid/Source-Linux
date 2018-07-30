################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf sqlite-autoconf-3240000
tar -xvf sqlite-autoconf-3240000.tar.gz
cd sqlite-autoconf-3240000

./configure --prefix=/usr     \
            --disable-static  \
            --enable-fts5     \
            CFLAGS="-g -O2                    \
            -DSQLITE_ENABLE_FTS4=1            \
            -DSQLITE_ENABLE_COLUMN_METADATA=1 \
            -DSQLITE_ENABLE_UNLOCK_NOTIFY=1   \
            -DSQLITE_ENABLE_DBSTAT_VTAB=1     \
            -DSQLITE_SECURE_DELETE=1          \
            -DSQLITE_ENABLE_FTS3_TOKENIZER=1" &&
make -j$(nproc)

make install

cd $src && rm -rf sqlite-autoconf-3240000

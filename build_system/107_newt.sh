################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf newt-0.52.20
tar -xvzf newt-0.52.20.tar.gz
cd newt-0.52.20

sed -e 's/^LIBNEWT =/#&/' \
    -e '/install -m 644 $(LIBNEWT)/ s/^/#/' \
    -e 's/$(LIBNEWT)/$(LIBNEWTSONAME)/g' \
    -i Makefile.in                           &&

./configure --prefix=/usr --with-gpm-support &&
make -j$(nproc)

make install

cd $src && rm -rf newt-0.52.20

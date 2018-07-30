################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf nspr-4.19
tar -xvzf nspr-4.19.tar.gz
cd nspr-4.19

cd nspr                                                     &&
sed -ri 's#^(RELEASE_BINS =).*#\1#' pr/src/misc/Makefile.in &&
sed -i 's#$(LIBRARY) ##'            config/rules.mk         &&

./configure --prefix=/usr \
            --with-mozilla \
            --with-pthreads \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) &&
make -j$(nproc)

make install

cd $src && rm -rf nspr-4.19

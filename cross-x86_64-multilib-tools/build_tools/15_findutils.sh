#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf findutils-4.6.0
tar -xvzf findutils-4.6.0.tar.gz
cd findutils-4.6.0

echo "gl_cv_func_wcwidth_works=yes" > config.cache
echo "ac_cv_func_fnmatch_gnu=yes" >> config.cache

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --cache-file=config.cache

make -j$(nproc)
make install

cd $src && rm -rf findutils-4.6.0


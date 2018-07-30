#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf tar-1.29
tar -xvf tar-1.29.tar.xz
cd tar-1.29

cat > config.cache << EOF
gl_cv_func_wcwidth_works=yes
gl_cv_func_btowc_eof=yes
ac_cv_func_malloc_0_nonnull=yes
gl_cv_func_mbrtowc_incomplete_state=yes
gl_cv_func_mbrtowc_nul_retval=yes
gl_cv_func_mbrtowc_null_arg1=yes
gl_cv_func_mbrtowc_null_arg2=yes
gl_cv_func_mbrtowc_retval=yes
gl_cv_func_wcrtomb_retval=yes
EOF

./configure \
    --prefix=/tools \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --cache-file=config.cache

make -j$(nproc)
make install

cd $src && rm -rf tar-1.29


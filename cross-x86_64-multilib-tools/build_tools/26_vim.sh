#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf vim80
tar -xvjf vim-8.0.tar.bz2
cd vim80

patch -Np1 -i ../vim-8.0-branch_update-1.patch

cat > src/auto/config.cache << "EOF"
vim_cv_getcwd_broken=no
vim_cv_memmove_handles_overlap=yes
vim_cv_stat_ignores_slash=no
vim_cv_terminfo=yes
vim_cv_toupper_broken=no
vim_cv_tty_group=world
vim_cv_tgent=zero
EOF

echo '#define SYS_VIMRC_FILE "/tools/etc/vimrc"' >> src/feature.h

./configure \
    --build=${LFS_HOST} \
    --host=${LFS_TARGET} \
    --prefix=/tools \
    --enable-gui=no \
    --disable-gtktest \
    --disable-xim \
    --disable-gpm \
    --without-x \
    --disable-netbeans \
    --with-tlib=ncurses

make -j$(nproc)
make install

ln -sv vim /tools/bin/vi

cat > /tools/etc/vimrc << "EOF"
" Begin /tools/etc/vimrc

set nocompatible
set backspace=2
set ruler
syntax on

" End /tools/etc/vimrc
EOF

cd $src && rm -rf vim80


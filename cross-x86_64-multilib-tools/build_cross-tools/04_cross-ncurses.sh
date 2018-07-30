#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf ncurses-6.0
tar -xvzf ncurses-6.0.tar.gz
cd ncurses-6.0

AWK=gawk ./configure \
		--prefix=/cross-tools \
		--without-debug

make -C include
make -C progs tic

install -v -m755 progs/tic /cross-tools/bin

cd $src && rm -rf ncurses-6.0


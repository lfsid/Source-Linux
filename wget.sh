#############################################################################
#
#############################################################################
. ./config.sh

cat $aa/logo

rm -rf /$src
mkdir /$src
wget --input-file=wget-list --continue --directory-prefix=/$src

cd $src

git clone git://projects.archlinux.org/pacman.git pacman

git clone https://github.com/OpenRC/openrc.git openrc

rm -rf /LFS-source
mkdir /LFS-source && cp -r $src/* /LFS-source


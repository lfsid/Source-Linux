#############################################################################
#
#############################################################################
. ./config3.sh


wget --input-file=wget-list --continue --directory-prefix=$SRC

mkdir /LFS-source
cp -r $SRC/* /LFS-source/source

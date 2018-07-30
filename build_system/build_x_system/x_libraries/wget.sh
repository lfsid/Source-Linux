#############################################################################
#
#############################################################################
. ./config.sh

rm -rf $SRC
mkdir $SRC
wget --input-file=wget-list --continue --directory-prefix=$SRC

mkdir /LFS-source
cp -r $SRC /LFS-source

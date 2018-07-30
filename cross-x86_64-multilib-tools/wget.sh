#############################################################################
#
#############################################################################
. ./config.sh

cat $aa/logo

rm -rf /$src
mkdir /$src
wget --input-file=wget-list --continue --directory-prefix=/$src

cd /source-multilib/source

mkdir /CLFS-source && cp -r /mnt/source-multilib/source /CLFS-source


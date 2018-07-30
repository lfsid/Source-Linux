#####################################################################
#
#####################################################################
. ./config.sh


rm -rf /LFS-cross-tools
mkdir /LFS-cross-tools
cp -r $LFS/cross-tools /LFS-cross-tools

rm -rf /LFS-tools
mkdir /LFS-tools
cp -r $LFS/tools /LFS-tools


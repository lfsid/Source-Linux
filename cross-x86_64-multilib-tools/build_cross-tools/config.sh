######################################################
#
######################################################

export PATH=/cross-tools/bin:/bin:/usr/bin:$PATH

export aa=$(pwd)
export iso=$aa/iso_image
export LFS=/mnt/source-multilib
export src=$LFS/source
export LFS_HOST=$(echo ${MACHTYPE} | sed -e 's/-[^-]*/-cross/')
export LFS_TARGET="x86_64-master-linux-gnu"
export LFS_TARGET32="i686-master-linux-gnu"
export BUILD32="-m32"
export BUILD64="-m64"
export LC_ALL=POSIX

mkdir -v $LFS
mkdir -v $src
install -dv ${LFS}/tools
install -dv ${LFS}/cross-tools
ln -sv ${LFS}/tools /
ln -sv ${LFS}/cross-tools /

export LFS_HOST="${LFS_HOST}"
export LFS_TARGET="${LFS_TARGET}"
export LFS_TARGET32="${LFS_TARGET32}"
export BUILD32="${BUILD32}"
export BUILD64="${BUILD64}"

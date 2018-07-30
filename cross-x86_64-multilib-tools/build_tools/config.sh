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

export CC="${LFS_TARGET}-gcc ${BUILD64}"
export CXX="${LFS_TARGET}-g++ ${BUILD64}"
export AR="${LFS_TARGET}-ar"
export AS="${LFS_TARGET}-as"
export RANLIB="${LFS_TARGET}-ranlib"
export LD="${LFS_TARGET}-ld"
export STRIP="${LFS_TARGET}-strip"

export CC="${CC}"
export CXX="${CXX}"
export AR="${AR}"
export AS="${AS}"
export RANLIB="${RANLIB}"
export LD="${LD}"
export STRIP="${STRIP}"

######################################################
#
######################################################

ROOT_UID=0     # Only users with $UID 0 have root privileges.
E_NOTROOT=87   # Non-root exit error.

# Run as root, of course.
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

export aa=$(pwd)
export LFS=/mnt/source-linux
export src=$LFS/source
export iso=$aa/iso
export LFS_TGT=$(uname -m)-lfs-linux-gnu
export LC_ALL=POSIX

mkdir -v $LFS
mkdir -v $src
mkdir -v $LFS/tools
ln -sv $LFS/tools /




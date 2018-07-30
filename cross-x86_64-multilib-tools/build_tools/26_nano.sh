#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf nano-2.9.7
tar -xvf nano-2.9.7.tar.xz
cd nano-2.9.7

./configure \
	--prefix=/tools \
	--build=${LFS_HOST} \
	--host=${LFS_TARGET}

make -j$(nproc)
make install

cd $src && rm -rf nano-2.9.7


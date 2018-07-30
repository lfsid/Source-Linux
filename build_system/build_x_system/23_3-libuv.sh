################################################################
#
################################################################


cd /source
rm -rf libuv-v1.19.2
tar -xvf libuv-v1.19.2.tar.gz
cd libuv-v1.19.2

sh autogen.sh                              &&
./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

cd /source && rm -rf libuv-v1.19.2

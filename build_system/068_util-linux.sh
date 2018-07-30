#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf util-linux-2.32.1
tar -xvf util-linux-2.32.1.tar.xz
cd util-linux-2.32.1

mkdir -pv /var/lib/hwclock

rm -vf /usr/include/{blkid,libmount,uuid}

./configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
            --docdir=/usr/share/doc/util-linux-2.32.1 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            --without-systemd    \
            --without-systemdsystemunitdir

make -j$(nproc)
make install

cd $src && rm -rf util-linux-2.32.1

